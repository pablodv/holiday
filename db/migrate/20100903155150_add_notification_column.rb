class AddNotificationColumn < ActiveRecord::Migration
  def self.up
    add_column :clients, :notification, :boolean
  end

  def self.down
    remove_column :clients, :notification, :boolean
  end
end
