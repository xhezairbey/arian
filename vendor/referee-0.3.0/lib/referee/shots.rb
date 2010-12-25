### Referee.
###   file: lib/referee/shots.rb

module Referee
  
  # Return the information for the specified shot.
  def self.shot(id)
    self.get('/shots/' + id.to_s)
  end
  
  # Returns one of the special lists (everyone, popular, debut). Options are :page and :per_page.
  def self.list(id, options={})
    self.get('/shots/' + id.to_s, :query => options)
  end
  
  # Returns the most recent shots for the specified player. Options are :page and :per_page.
  def self.shots(id, options={})
    self.get('/player/' + id.to_s + '/shots', :query => options)
  end
  
  # Returns the most recent shots from the players the specified player is following. Options are :page and :per_page.
  def self.shots_from_following(id, options={})
    self.get('/player/' + id.to_s + '/shots/following', :query => options)
  end

end

