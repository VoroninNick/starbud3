class AddLinkToCarouselLabel < ActiveRecord::Migration
  def change
    add_column :main_label_carousels, :link, :string
  end
end
