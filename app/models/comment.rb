class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true
  
  belongs_to :author, :class_name => 'User'

  default_scope :order => 'created_at ASC'

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable
  
  validates_presence_of :entry, :author, :body

  # NOTE: Comments belong to an entry
  belongs_to :entry
end
