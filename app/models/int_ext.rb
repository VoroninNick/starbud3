class IntExt < ActiveRecord::Base
  attr_accessible :name, :image_interior, :image_structure, :action_id, :collection_id, :brand_id, :sub_catalog_id, :cpde_product

  has_attached_file :image_interior, styles:{
       large: "555x375#"
  },url:'/assets/images/int_ext/image_interior/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_attached_file :image_structure, styles:{
      thumb: "237x321#", large: "840x502#"
  },url:'/assets/images/int_ext/image_structure/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  belongs_to :brand

  rails_admin do
    navigation_label "Інтер'єр і Екстер'єр"
    label "Інтер'єр"
    label_plural "Інтер'єри"

    list do
      field :name
      field :cpde_product
      field :brand
      field :image_interior
      field :image_structure
    end

    edit do
      field :name
      field :cpde_product do
        label 'Код товару'
      end
      field :brand
      field :image_interior, :paperclip do
        label "Інтре'єр"
      end

      field :image_structure, :paperclip do
        label 'Структура'
      end
    end
  end
end
