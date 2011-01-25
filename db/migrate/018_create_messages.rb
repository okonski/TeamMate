class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.references :author
      t.references :recipient
      t.string :title
      t.text :body
      t.boolean :read

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
