class Exterior < ActiveRecord::Base
  attr_accessible :name, :image_interior, :image_structure, :action_id, :collection_id, :brand_id, :sub_catalog_id, :code_product

  attr_accessible :alt_inter, :alt_struct, :title_inter, :title_struct, :desc_inter, :desc_struct

  has_attached_file :image_interior, styles:{
      large: "555x375#"
  },url:'/assets/images/exterior/image_interior/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_attached_file :image_structure, styles:{
      thumb: "237x321#", large: "840x502#"
  },url:'/assets/images/exterior/image_structure/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  belongs_to :brand

  attr_accessible :exterior_url
  before_validation :generate_exterior_url
  def generate_exterior_url
    self.exterior_url = name.parameterize
  end


  rails_admin do
    navigation_label "Інтер'єр, Екстер'єр, Супутні товари"
    label "Екстер'єр"
    label_plural "Екстер'єри"

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
      field :brand_id, :enum do

        enum do
          Brand.includes(:sub_catalog).all.map { |i| [i.sub_catalog.name + ', ' + i.name, i.id] }
        end
      end
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
