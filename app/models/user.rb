class User < ActiveRecord::Base
  # Include default devise modules.
  # :rememberable, :confirmable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable,  :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end
