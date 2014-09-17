class Match < ActiveRecord::Base
  attr_accessible :steam_id, :user_id

  belongs_to :user

  def self.save_match_from_matchlist(matchlist, current_user)
    
    matchlist.each do |match|
      unless Match.find_by_steam_id(match['match_id'])
          m = Match.new
          m.steam_id = match['match_id']
          m.user_id = current_user.id

          m.save
      end
    end

  end
end
