class Topic < ActiveRecord::Base
  attr_accessible :created_by, :description, :title

  belongs_to :user
end
