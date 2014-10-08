class CreateMainLabelCarousels < ActiveRecord::Migration
  def change
    create_table :main_label_carousels do |t|
      t.string :label_name
      t.has_attached_file :label_image
      t.string :label_alt
      t.integer :index_sorting

      t.timestamps
    end
  end
end
