class CreateSpecialOffers < ActiveRecord::Migration
  def change
    create_table :special_offers do |t|
      t.string :name
      t.has_attached_file :image

      t.timestamps
    end
  end
end
