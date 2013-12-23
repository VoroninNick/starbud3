class CreateDorInformations < ActiveRecord::Migration
  def change
    create_table :dor_informations do |t|
      t.integer :door_id
      t.text :specifications
      t.text :care
      t.text :environment

      t.timestamps
    end
  end
end
