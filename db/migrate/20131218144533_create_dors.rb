class CreateDors < ActiveRecord::Migration
  def change
    create_table :dors do |t|
      t.string :name
      t.text :descriptions
      t.integer :action_id
      t.integer :collection_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
