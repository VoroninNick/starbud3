class RelatedProduct < ActiveRecord::Base
  attr_accessible :name, :code_product, :image_interior, :image_structure, :action_id, :collection_id, :brand_id, :sub_catalog_id

  attr_accessible :alt_inter, :alt_struct, :title_inter, :title_struct, :desc_inter, :desc_struct

  has_attached_file :image_interior, styles:{
      large: "555x375#"
  },url:'/assets/images/related_product/image_interior/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_attached_file :image_structure, styles:{
      thumb: "237x321#", large: "840x502#"
  },url:'/assets/images/related_product/image_structure/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  belongs_to :brand
  attr_accessible :brand

  rails_admin do
    navigation_label "Інтер'єр, Екстер'єр, Супутні товари"
    label "Супутній товар"
    label_plural "Супутні товари"

    list do
      field :name
      field :code_product
      field :brand
      field :image_interior
      field :image_structure
    end

    edit do
      field :name
      field :code_product do
        label 'Код товару'
      end
      field :brand
      field :image_interior, :paperclip do
        label "Інтре'єр"
      end
      field :alt_inter
      field :title_inter

      field :image_structure, :paperclip do
        label 'Структура'
      end
      field :alt_struct
      field :title_struct
    end
  end
end
