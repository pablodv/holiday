class AddActiveToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :active, :boolean, :defult => false
  end

  def self.down
    remove_column :users, :active
  end
end
