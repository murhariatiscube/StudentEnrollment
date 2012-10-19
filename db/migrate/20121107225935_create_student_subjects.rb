class CreateStudentSubjects < ActiveRecord::Migration
  def change
    create_table :student_subjects do |t|
	  t.references :student
      t.references :subject
      t.timestamps
    end
      add_index :student_subjects, ["subject_id", "student_id"]
  end
end
