class Server < ActiveRecord::Base
  has_many :comments, :as => :commentable
  
  validates_presence_of :title, :address
end
