class AddTextoPersonajeCuadro1ToTira < ActiveRecord::Migration
 def change
  	add_column :tiras, :texto_personaje_cuadro1, :string
  	add_column :tiras, :texto_personaje_cuadro2, :string
  	add_column :tiras, :texto_personaje_cuadro3, :string
  	add_column :tiras, :texto_personaje_cuadro4, :string
  	add_column :tiras, :texto_personaje_cuadro5, :string
  	add_column :tiras, :texto_personaje_cuadro6, :string
  end
end
