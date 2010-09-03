class User < ActiveRecord::Base
  has_many :clients
  
  acts_as_authentic 
end
