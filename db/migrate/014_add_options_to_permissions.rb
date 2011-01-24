class AddOptionsToPermissions < ActiveRecord::Migration
  def self.up
    change_table :permissions do |t|
      t.text :options
    end
  end

  def self.down
    change_table :permissions do |t|
      t.remove :options
    end
  end
end
