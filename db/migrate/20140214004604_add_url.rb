class AddUrl < ActiveRecord::Migration
  def change
    add_column :floors, :floor_url, :string
    add_column :int_exts, :interior_url, :string
    add_column :exteriors, :exterior_url, :string
    add_column :related_products, :related_url, :string

    add_column :promotions, :promotion_url, :string


  end
end
