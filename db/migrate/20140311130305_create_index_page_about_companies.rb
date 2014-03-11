class CreateIndexPageAboutCompanies < ActiveRecord::Migration
  def change
    create_table :index_page_about_companies do |t|
      t.text :description

      t.timestamps
    end
  end
end
