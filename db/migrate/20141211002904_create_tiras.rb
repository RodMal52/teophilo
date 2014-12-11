class CreateTiras < ActiveRecord::Migration
  def change
    create_table :tiras do |t|
      t.references :user, index: true
      t.string :titulo
      t.string :text1
      t.string :text2
      t.string :text3
      t.string :text4
      t.string :text5
      t.string :text6
      t.integer :dia
      t.string :mes
      t.integer :ano

      t.timestamps
    end
  end
end
