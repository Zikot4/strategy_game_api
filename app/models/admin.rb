class Admin < ApplicationRecord
  devise :database_authenticatable, :trackable, :validatable

  validates_presence_of :email, :password
end
