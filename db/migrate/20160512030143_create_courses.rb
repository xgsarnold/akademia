class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :semester
      t.date :year
      t.integer :teacher_id

      t.timestamps null: false
    end
    add_index :courses, :teacher_id
  end
end
