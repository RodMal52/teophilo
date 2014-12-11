class AddAprovadoToTiras < ActiveRecord::Migration
  def change
  	add_column :tiras, :aprobado, :boolean
  end
end
