class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  has_many :locations
  has_many :trips
  has_many :routes, through: :trips
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :first_name, :last_name
end
