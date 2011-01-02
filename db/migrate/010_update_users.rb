class UpdateUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :name
      t.integer :gender
      t.string :country
      t.integer :age
      t.references :profile
      t.references :hardware
      t.text :signature
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :name, :gender, :country, :age 
      t.remove :profile_id, :hardware_id, :signature
    end
  end
end
