class ChangeColumnVideoUrlTypeForTableVideoOnMainPage < ActiveRecord::Migration
  def change
    change_column :video_on_main_pages, :video_url, :text
  end
end
