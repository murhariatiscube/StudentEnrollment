class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
	  t.string "tname"
      t.integer "mob"
      t.string "email"
      t.timestamps
    end
  end
end
