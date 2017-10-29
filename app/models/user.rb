class User < ActiveRecord::Base
  # Include default devise modules.
  # :rememberable, :confirmable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_one :owner_lobby, foreign_key: :owner_id, class_name: 'Lobby'

  has_one :lobbies_user
  delegate :lobby, to: :lobbies_user

  validates_presence_of :email, :password

  def name # for RA
    email
  end
end
