class Forum::Category < ActiveRecord::Base
  has_many :topics, :class_name => 'Forum::Topic'
  has_many :children, :class_name => 'Forum::Category', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Forum::Category'
end