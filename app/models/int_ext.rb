class IntExt < ActiveRecord::Base
  attr_accessible :name, :image_interior, :image_structure, :action_id, :collection_id, :brand_id, :sub_catalog_id

  has_attached_file :image_interior
  has_attached_file :image_structure


  #belongs_to :collection
  belongs_to :sub_catalog

  rails_admin do
    navigation_label "Інтер'єр і Екстер'єр"
    label "Інтер'єри і Екстер'єри"
    label_plural "Інтер'єр і Екстер'єр"

    list do
      field :name
      field :sub_catalog
      field :image_interior
      field :image_structure
    end

    edit do
      field :name
      field :sub_catalog
      field :image_interior, :paperclip do
        label "Інтре'єр"
      end

      field :image_structure, :paperclip do
        label 'Структура'
      end
    end
  end
end
