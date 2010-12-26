class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.references :group
      t.string :action
      t.string :subject_class

      t.timestamps
    end
  end

  def self.down
    drop_table :permissions
  end
end
