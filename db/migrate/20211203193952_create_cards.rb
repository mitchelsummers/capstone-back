class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :month
      t.integer :day
      t.string :time
      t.boolean :privacy
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
