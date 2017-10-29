class LobbiesUser < ApplicationRecord
  belongs_to :user
  belongs_to :lobby, counter_cache: :users_count
end
