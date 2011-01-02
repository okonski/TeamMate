class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :steam
      t.string :xfire
      t.string :jabber
      t.string :gadugadu
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
