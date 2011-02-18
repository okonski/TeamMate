class ForumCategory < ActiveRecord::Base
  set_table_name "forum_categories"
  has_many :topics, :class_name => 'ForumTopic'
  has_many :children, :class_name => 'ForumCategory', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'ForumCategory'
  belongs_to :forum, :class_name => "Forum"
  validates :name, :presence => true
end
