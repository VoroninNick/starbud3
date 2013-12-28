class ChangeColumnVideoUrlTypeForTableUsefulVideo < ActiveRecord::Migration
  def change
    change_column :useful_videos, :video_url, :text
  end
end
