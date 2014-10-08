class CreateUsefulVideos < ActiveRecord::Migration
  def change
    create_table :useful_videos do |t|
      t.string :title
      t.string :video_url
      t.text :descriptions

      t.timestamps
    end
  end
end
