class DefaultByNotification < ActiveRecord::Migration
  def self.up
    change_column :clients, :notification, :boolean, :default => true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
