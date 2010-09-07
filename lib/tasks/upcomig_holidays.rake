namespace :mailer do
  desc "Email with de upcoming holidays"
  task :email_reminder => :environment do

    @user = User.find(9)#current_user.id)
    @clients = @user.clients.notify
    @holidays = @user.holidays.active.recent

    @clients.each do |c|      
        Notifier.deliver_holiday_reminder(c,@holidays)      
    end

  end
end
