class Admin::CoreController < ApplicationController
  before_filter :require_user

  def owner
      "Ruby on Rails 2010"
    end

  def app_name
    "Holiday Reminder"
  end

  set_module :clients
  set_module :holidays
end
