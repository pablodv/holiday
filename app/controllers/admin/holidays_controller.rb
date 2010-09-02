class Admin::HolidaysController < Admin::CoreController
  administrate_me do |admin|
    admin.search :name
    admin.order  "day"
  end
end
