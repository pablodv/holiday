class Holiday < ActiveRecord::Base
  belongs_to :user

  named_scope :active,          :conditions => {:checked => false}
  named_scope :recent,          :conditions => ['day > ?', 14.day.from_now]

end
