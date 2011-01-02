class Server < ActiveRecord::Base
  has_many :comments, :as => :commentable, :dependent => :destroy
  
  validates_presence_of :title, :address
end
