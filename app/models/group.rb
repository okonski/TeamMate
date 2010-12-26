class Group < ActiveRecord::Base
  default_scope includes(:permissions)
  has_many :permissions
end
