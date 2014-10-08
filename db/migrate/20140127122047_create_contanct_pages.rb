class CreateContanctPages < ActiveRecord::Migration
  def change
    create_table :contanct_pages do |t|
      t.string :address
      t.string :working_hours
      t.string :phones

      t.timestamps
    end
  end
end
