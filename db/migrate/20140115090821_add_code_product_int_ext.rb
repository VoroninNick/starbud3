class AddCodeProductIntExt < ActiveRecord::Migration
  def change
    add_column :int_exts, :cpde_product, :integer
  end
end
