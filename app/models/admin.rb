class Admin < ApplicationRecord
  devise :database_authenticatable, :recoverable, :trackable, :validatable
  
  validates_presence_of :email, :password
end
