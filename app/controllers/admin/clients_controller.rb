class Admin::ClientsController < Admin::CoreController
  administrate_me do |admin|
    admin.search :name
  end
end
