class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.integer :hole_count
      t.integer :course_par
      t.integer :rating

      t.timestamps
    end
  end
end
