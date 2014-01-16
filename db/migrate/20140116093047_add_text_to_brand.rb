class AddTextToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :text_to_brand, :text
  end
end
