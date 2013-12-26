class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.has_attached_file :image
      t.text :short_description
      t.datetime :begin_promotion
      t.datetime :end_promotion
      t.text :description

      t.timestamps
    end
  end
end
