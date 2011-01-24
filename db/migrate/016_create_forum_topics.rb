class CreateForumTopics < ActiveRecord::Migration
  def self.up
    create_table :forum_topics do |t|
      t.references :category
      t.string :title
      t.references :author

      t.timestamps
    end
  end

  def self.down
    drop_table :forum_topics
  end
end
