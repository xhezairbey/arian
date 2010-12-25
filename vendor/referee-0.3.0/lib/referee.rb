### Referee.
###   file: lib/referee.rb

require 'httparty'

directory = File.expand_path(File.dirname(__FILE__))

require File.join(directory, 'referee', 'httparty', 'icebox')

module Referee

  include HTTParty
  include HTTParty::Icebox
  
  cache :store => 'memory', :timeout => 0.5, :logger => Logger.new(STDOUT)
  
  base_uri 'api.dribbble.com'

end

require File.join(directory, 'referee', 'shots')
require File.join(directory, 'referee', 'players')
