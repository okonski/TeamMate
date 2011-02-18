class ForumTopic < ActiveRecord::Base
  belongs_to :category, :class_name => 'ForumCategory'
  belongs_to :author, :class_name => 'User'
  has_many :comments, :as => :commentable
  
  validates_presence_of :category, :author, :title
end
