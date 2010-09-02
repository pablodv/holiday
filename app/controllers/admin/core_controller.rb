class Admin::CoreController < ApplicationController

  def owner
      "Ruby on Rails 2010"
    end

  def app_name
    "Holiday Reminder"
  end

  set_module :clients
end
