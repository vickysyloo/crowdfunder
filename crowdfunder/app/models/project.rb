class Project < ActiveRecord::Base

  has_many :users, through: :pledges
  has_many :pledges
  
end
