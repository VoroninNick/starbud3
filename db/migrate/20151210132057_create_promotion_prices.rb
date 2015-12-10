class CreatePromotionPrices < ActiveRecord::Migration
  def change
    create_table :promotion_prices do |t|
      t.string :type
      t.string :title
      t.date :custom_date
      t.text :comment
      t.boolean :published
      t.integer :position
      t.attachment :price

      t.timestamps
    end
  end
end
