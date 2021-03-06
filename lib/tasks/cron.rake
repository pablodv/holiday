
  desc "Email with de upcoming holidays"
  task :cron => :environment do

    if Time.now.wday == 1

      @users = User.find(:all)

      @users.each do |u|
        puts "User #{u.id}"
        @clients = u.clients.notify
        @holidays = u.holidays.active.recent

        @clients.each do |c|
            puts "Client #{c.id}"
            Notifier.deliver_holiday_reminder(c,@holidays)
        end
      end

    end
  end
  

