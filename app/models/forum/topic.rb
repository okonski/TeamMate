class Forum::Topic < ActiveRecord::Base
  belongs_to :category, :class_name => 'Forum::Category'
  belongs_to :author, :class_name => 'User'
  has_many :comments, :as => :commentable
end
