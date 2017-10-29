class CreateLobbiesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :lobbies_users do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :lobby, foreign_key: true
      t.boolean :ready, default: false
      t.integer :lap, default: 0
    end
  end
end
