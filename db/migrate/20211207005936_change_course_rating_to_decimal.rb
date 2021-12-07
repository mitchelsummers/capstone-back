class ChangeCourseRatingToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :courses, :rating, :decimal
  end
end
