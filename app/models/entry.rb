class Entry < ActiveRecord::Base
  belongs_to :author, :class_name => 'User'
  belongs_to :category
  
  cattr_reader :per_page
  @@per_page = 5
end
