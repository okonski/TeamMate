class AddNestingCategories < ActiveRecord::Migration
  def self.up
    change_table :forum_categories do |t|
      t.references :parent
    end
  end

  def self.down
    change_table :forum_categories do |t|
      t.remove :parent_id
    end
  end
end
