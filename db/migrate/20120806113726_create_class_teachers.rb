class CreateClassTeachers < ActiveRecord::Migration
  def change
    create_table :class_teachers do |t|
    t.integer "teacher_id"
    t.string "year"
    t.boolean "classteach"
    t.string "tname"
    t.timestamps
    end
    add_index :class_teachers, ["teacher_id", "year"]
  end
end
