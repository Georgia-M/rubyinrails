class AddColorToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :color, :string
  end
end
