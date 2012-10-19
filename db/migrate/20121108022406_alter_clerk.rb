class AlterClerk < ActiveRecord::Migration
  def up
    add_column("clerks", "username", :string)
  	add_column("clerks", "hashed_password", :string)
  	add_column("clerks", "salt", :string)
	add_index("sclasses","year")
  end

  def down
  remove_index("sclasses","year")
  remove_column("clerks", "salt")
  remove_column("clerks", "hashed_password")
  remove_column("clerks", "username")
  end
end
