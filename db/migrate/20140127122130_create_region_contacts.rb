class CreateRegionContacts < ActiveRecord::Migration
  def change
    create_table :region_contacts do |t|
      t.string :region
      t.string :name
      t.string :phones
      t.string :mails
      t.integer :contanct_page_id
      t.integer :index_sorting

      t.timestamps
    end
  end
end
