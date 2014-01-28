class CreateMainBannerSlides < ActiveRecord::Migration
  def change
    create_table :main_banner_slides do |t|
      t.string :name
      t.has_attached_file :back_image
      t.has_attached_file :layer_image
      t.text :content
      t.integer :index_sorting
      t.integer :future
      t.integer :main_banner_id

      t.timestamps
    end
  end
end
