class CreateVideoOnMainPages < ActiveRecord::Migration
  def change
    create_table :video_on_main_pages do |t|
      t.string :title
      t.string :video_url
      t.text :descriptions

      t.timestamps
    end
  end
end
