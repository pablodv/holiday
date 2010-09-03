class User < ActiveRecord::Base
  has_many :clients
  has_many :holidays
  
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end

  acts_as_authentic
end
