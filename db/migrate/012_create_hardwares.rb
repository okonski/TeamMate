class CreateHardwares < ActiveRecord::Migration
  def self.up
    create_table :hardwares do |t|
      t.string :cpu
      t.string :vga
      t.string :sound
      t.string :mouse
      t.string :keyboard
      t.string :ram
      t.string :net
      t.string :hdd
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :hardwares
  end
end
