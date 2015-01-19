class AddCargoToUsers < ActiveRecord::Migration
  def change
	  	add_column :users, :cargo, :string
	  	add_column :users, :inst, :string
	  	add_column :users, :sitio, :string

  end
end
