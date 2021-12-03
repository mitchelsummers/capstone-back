class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_name
      t.string :password_digest
      t.string :skill_level

      t.timestamps
    end
  end
end
