class AddPersonajeCuadro1ToTira < ActiveRecord::Migration
  def change
  	add_column :tiras, :personaje_cuadro1, :string
  	add_column :tiras, :personaje_cuadro2, :string
  	add_column :tiras, :personaje_cuadro3, :string
  	add_column :tiras, :personaje_cuadro4, :string
  	add_column :tiras, :personaje_cuadro5, :string
  	add_column :tiras, :personaje_cuadro6, :string
  end
end
