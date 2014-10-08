class AddColumnDoorVariantsFulfillmentOptionId < ActiveRecord::Migration
  def change
    add_column :door_color_options, :door_variants_fulfillment_option_id, :integer
  end
end
