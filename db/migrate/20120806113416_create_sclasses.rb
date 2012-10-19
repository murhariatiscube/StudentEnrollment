class CreateSclasses < ActiveRecord::Migration
  def change
    
    create_table :sclasses, :id => false do |t|
      t.string "year"
      t.timestamps
    end
     execute "ALTER TABLE sclasses ADD PRIMARY KEY (year);"
  end
end
