class User < ActiveRecord::Base

  has_many :projects, through: :pledges
  has_many :pledges

end
