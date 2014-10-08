class AddLinkToMainBannerSlide < ActiveRecord::Migration
  def change
    add_column :main_banner_slides, :slide_link, :string
  end
end
