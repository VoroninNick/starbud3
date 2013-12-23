class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :name
      t.text :descriptions
      t.integer :action_id
      t.integer :collection_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
