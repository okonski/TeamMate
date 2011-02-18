class Forum::Forum < ActiveRecord::Base
  has_many :categories, :class_name => 'Forum::Category', :foreign_key => 'parent_id'
  validates :name, :presence => true
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
