#!/usr/bin/env ruby

### Arian Xhezairi
###   a: Arian Xhezairi
###     e: arian@xhezairi.com
###     u: http://www.xhezairi.com
###   v: 0.5
###
###   f: arian.rb

# Dependencies
require 'rubygems'
require 'sinatra'
require 'haml'

$LOAD_PATH.unshift File.dirname(__FILE__) + '/vendor/ruby-gmail-0.2.1/lib'
require 'gmail.rb'

# Configure
configure do
  set :environment, :production
  set :server, %w[thin mongrel webrick]
  set :port, 8080
  set :haml, :format => :html5
end

# Controllers
get '/' do
  haml :profile
end

get '/work' do
  haml :work
end

get '/projects' do
  haml :projects
end

get '/contact' do
  haml :contact
end

# Contact Form
post '/contact_form' do
  name = params[:name]
  email = params[:email]
  subject = params[:subject]
  body = params[:body]

  contact = Gmail.new('GMailName', 'pa55w0Rd')
  contact.deliver do
    to 'arian@xhezairi.com'
    subject name + ' (' + email + '): ' + subject
    body body
  end
  contact.logout
  
  haml :contact_form
end
