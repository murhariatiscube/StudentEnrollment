class CreateSubjectTeachers < ActiveRecord::Migration
  def change
    create_table :subject_teachers do |t|
      t.references :teacher
      t.references :subject
      t.string "sub_name"
      t.string "tname"
      t.timestamps
    end
      add_index :subject_teachers, ["subject_id", "teacher_id"]
  end
end


