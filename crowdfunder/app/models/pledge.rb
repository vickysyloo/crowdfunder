class Pledge < ActiveRecord::Base
  belongs_to :project
  
  has_and_belongs_to_many :users
end
