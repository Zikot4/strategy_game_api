class CreateLobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :lobbies do |t|
      t.belongs_to :owner
      t.integer :amount_of_users
      t.boolean :everyone_is_ready, default: false
    end
  end
end
