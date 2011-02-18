class Entry < ActiveRecord::Base
  belongs_to :author, :class_name => 'User'
  belongs_to :entry_category
  has_many :comments, :as => :commentable, :dependent => :destroy
  
  # will_paginate
  cattr_reader :per_page
  @@per_page = 5
end
