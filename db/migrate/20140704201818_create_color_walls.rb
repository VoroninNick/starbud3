class CreateColorWalls < ActiveRecord::Migration
  def change
    create_table :color_walls do |t|
      t.string :name
      t.boolean :public
      t.integer :index_sort
      t.integer :render_interior_id

      t.timestamps
    end
  end
end
