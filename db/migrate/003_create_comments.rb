class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :body
      t.references :author
      t.references :commentable, :polymorphic => true
      t.references :entry
      t.timestamps
    end

    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
    add_index :comments, :entry_id
  end

  def self.down
    drop_table :comments
  end
end
