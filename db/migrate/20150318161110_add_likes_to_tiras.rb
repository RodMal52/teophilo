class AddLikesToTiras < ActiveRecord::Migration
  def change
  	  	add_column :tiras, :likes, :integer, :default => 0
  	  	add_column :tiras, :dislikes, :integer, :default => 0

  end
end
