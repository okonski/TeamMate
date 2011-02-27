class Server < ActiveRecord::Base
  has_many :comments, :as => :commentable, :dependent => :destroy
  
  validates_presence_of :title, :address
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
