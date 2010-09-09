class Admin::ClientsController < Admin::CoreController
  administrate_me do |admin|
    admin.includes :user
    admin.search  "clients.name"
    admin.order  "clients.name"
    admin.filters do |f|
      f.set :notification, :conditions => {:notification => true}
    end
  end

  def general_conditions
    {:user_id => current_user.id}
  end

  def before_save
    @resource.user = current_user
  end
end
