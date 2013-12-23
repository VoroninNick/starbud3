class RemoveColumnDorVariantsFulfillmentOptionsId < ActiveRecord::Migration
  def change
    remove_column :door_color_options, :door_variants_fulfillment_options_id
  end
end
