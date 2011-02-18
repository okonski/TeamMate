class Forum < ActiveRecord::Base
  set_table_name "forum_forums"
  has_many :categories, :class_name => 'ForumCategory', :foreign_key => 'parent_id'
  validates :name, :presence => true
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
