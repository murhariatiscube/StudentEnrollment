class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string "sub_name"
      t.string "year"
      t.timestamps
    end
  end
end
