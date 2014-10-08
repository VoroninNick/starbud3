class CreateTestProducts < ActiveRecord::Migration
  def change
    create_table :test_products do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
