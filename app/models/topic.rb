class Topic < ActiveRecord::Base
  attr_accessible :created_by, :description, :title, :user_id

  belongs_to :user
end
