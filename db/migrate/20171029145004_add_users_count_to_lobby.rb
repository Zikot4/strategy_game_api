class AddUsersCountToLobby < ActiveRecord::Migration[5.0]
  def change
    add_column :lobbies, :users_count, :integer, default: 0, null: false
  end
end
