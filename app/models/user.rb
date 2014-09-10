class User < ActiveRecord::Base
  attr_accessible :name, :steam_id, :steam_image, :steam_nickname

  has_many(:user_connections, :foreign_key => :user_1_id, :dependent => :destroy)
  has_many(:reverse_user_connections, :class_name => :UserConnection, :foreign_key => :user_2_id, :dependent => :destroy)
  has_many :users, :through => :user_connections, :source => :user_2

  def self.find_for_steam_oauth(auth, signed_in_user=nil)

    if  User.find_by_steam_nickname(auth.info.nickname)
      
      User.find_by_steam_nickname(auth.info.nickname)
    else 
      user = User.new
      user.steam_id = auth.uid.to_i
      user.steam_nickname = auth.info.nickname
      user.steam_image = auth.info.image
      user.save
      user
    end
  end


end
