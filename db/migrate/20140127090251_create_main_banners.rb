class CreateMainBanners < ActiveRecord::Migration
  def change
    create_table :main_banners do |t|
      t.string :name

      t.timestamps
    end
  end
end
