
  desc "Email with de upcoming holidays"
  task :cron => :environment do

  if Time.now.day % 7 == 0
    @users = User.find(:all)

    @users.each do |u|

      @clients = u.clients.notify
      @holidays = u.holidays.active.recent

      @clients.each do |c|
          Notifier.deliver_holiday_reminder(c,@holidays)
      end
    end
    
  end
puts "Run cron #{Time.now.day}"
  end

