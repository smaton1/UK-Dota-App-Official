class UserConnection < ActiveRecord::Base
  attr_accessible :friend, :user_1_id, :user_2_id
end
