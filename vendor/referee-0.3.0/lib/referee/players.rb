### Referee.
###   file: lib/referee/player.rb

module Referee
  
  # Returns information for specified player.
  def self.player(id)
    self.get('/players/' + id.to_s)
  end
  
  # Returns a list of players that are following the specified player.
  def self.followers(id)
    self.get('/players/' + id.to_s + '/followers')
  end
  
  # Returns a list of players that the specified player follows.
  def self.following(id)
    self.get('/players/' + id.to_s + '/following')
  end
  
  # Returns a list of players that the specified player drafted.
  def self.draftees(id)
    self.get('/players/' + id.to_s + '/draftees')
  end
    
end
