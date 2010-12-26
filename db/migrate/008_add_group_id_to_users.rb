class AddGroupIdToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.references :group
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :group_id
    end
  end
end
