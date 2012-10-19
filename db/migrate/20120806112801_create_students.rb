class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string "year"
      t.integer "clerk_id", :default => 1
      t.string "sfname"
      t.string "slname"
      t.date "DOB"
      t.string "gender"
      t.integer "mob"
      t.float "per"
      t.string "email"
      t.timestamps
    end
      add_index("students", "year")
      add_index("students", "clerk_id")
  end
end
