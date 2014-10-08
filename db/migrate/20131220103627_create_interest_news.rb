class CreateInterestNews < ActiveRecord::Migration
  def change
    create_table :interest_news do |t|
      t.string :title
      t.has_attached_file :image
      t.text :short_description
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
