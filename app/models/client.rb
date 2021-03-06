class Client < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of   :name, :email
  #validates_uniqueness_of :name, :email

  named_scope :notify, :conditions => {:notification => true}
  
  
end
