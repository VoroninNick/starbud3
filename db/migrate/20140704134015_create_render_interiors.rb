class CreateRenderInteriors < ActiveRecord::Migration
  def change
    create_table :render_interiors do |t|
      t.string :name
      t.has_attached_file :image
      t.has_attached_file :thumb
      t.integer :position_x
      t.integer :position_y
      t.boolean :public
      t.integer :index_sort

      t.timestamps
    end
  end
end
