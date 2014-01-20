class AddSpecialOfferIdToDoor < ActiveRecord::Migration
  def change
    add_column :doors, :special_offer_id, :integer
  end
end
