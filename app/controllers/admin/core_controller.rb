class Admin::CoreController < ApplicationController

  def owner
      "Ruby on Rails 2010"
    end

  def app_name
    "Bookr v.1.0"
  end

  set_module :clients
end
