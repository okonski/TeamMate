class Permission < ActiveRecord::Base
  serialize :options, Hash
  
  belongs_to :group
end
