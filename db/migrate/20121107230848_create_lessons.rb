class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
	  t.references :subject   #model name
      t.integer "no"
      t.string "name"
      t.text "content"  
      t.timestamps
    end
	add_index("lessons","subject_id")   
  end
end
