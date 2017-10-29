class Lobby < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :lobbies_users, dependent: :destroy
  has_many :users, through: :lobbies_users

  validates_presence_of :owner
end
