class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
  validates_presence_of :name
  belongs_to :group
  has_one :profile
  has_one :hardware
  
  accepts_nested_attributes_for :profile, :hardware
  
  def admin?
    true
  end
end
