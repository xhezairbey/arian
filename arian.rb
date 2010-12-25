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

$LOAD_PATH.unshift File.dirname(__FILE__) + '/vendor/ruby-gmail-0.2.1/lib'
require 'gmail.rb'

# Configure
configure do
  set :environment, :production
  set :server, %w[thin mongrel webrick]
  set :port, 8080
end

# Controllers
get '/' do
  erb :profile
end

get '/work' do
  erb :work
end

get '/projects' do
  erb :projects
end

get '/contact' do
  erb :contact
end

# Contact Form
post '/contact_form' do
  name = params[:name]
  email = params[:email]
  subject = params[:subject]
  body = params[:body]

  contact = Gmail.new('arian.cntct.frm', 'whywouldyoutryandstealmypassword?')
  contact.deliver do
    to 'arian@xhezairi.com'
    subject name + ' (' + email + '): ' + subject
    body body
  end
  contact.logout
  
  erb :contact_form
end
