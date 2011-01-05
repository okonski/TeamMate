class RemoveForeignKeysFromUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.remove :hardware_id
      t.remove :profile_id
    end
  end

  def self.down
    change_table :users do |t|
      t.references :hardware
      t.references :profile
    end
  end
end
