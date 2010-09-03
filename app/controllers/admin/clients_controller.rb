class Admin::ClientsController < Admin::CoreController
  administrate_me do |admin|
    #admin.includes :user
    admin.search :name
    admin.order  "created_at DESC"
  end
  
end
