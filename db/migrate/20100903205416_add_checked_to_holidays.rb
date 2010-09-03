class AddCheckedToHolidays < ActiveRecord::Migration
  def self.up
    add_column :holidays, :checked, :boolean
  end

  def self.down
    remove_column :holidays, :checked
  end
end
