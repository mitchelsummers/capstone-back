class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.integer :user_id
      t.integer :card_id

      t.timestamps
    end
  end
end
