class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.has_attached_file :image
      t.text :short_description
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
