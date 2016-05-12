class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :assignment_name
      t.decimal :grade
      t.decimal :weight
      t.datetime :assigned_at
      t.datetime :due_at
      t.integer :course_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
