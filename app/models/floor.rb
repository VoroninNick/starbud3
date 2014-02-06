class Floor < ActiveRecord::Base
  attr_accessible :name, :image_interior, :image_structure, :image_perspective, :action_id, :collection_id, :brand_id

  attr_accessible :alt_inter, :alt_struct, :alt_per, :title_inter, :title_struct, :title_per, :desc_inter, :desc_struct, :desc_per


  has_attached_file :image_interior, styles:{
      large: "540x300#"
  },url:'/assets/images/floor/image_interior/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_attached_file :image_structure, styles:{thum: "201x75#",
      large: "840x315#"
  },url:'/assets/images/floor/image_structure/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_attached_file :image_perspective, styles:{thum: "201x75#",
      large: "840x315#"
  },url:'/assets/images/floorimage_perspective/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  belongs_to :collection

  has_many :floor_technical_datas
  accepts_nested_attributes_for :floor_technical_datas
  attr_accessible :floor_technical_datas_attributes

  rails_admin do
    navigation_label 'Підлога'
    label 'Підлога'
    label_plural 'Підлога'

    list do
      field :name
      field :collection
      field :image_interior
      field :floor_technical_datas
      field :image_structure
      field :image_perspective
    end

    edit do
      field :name
      field :collection_id, :enum do

        enum do
          Collection.includes(:brand).all.map { |i| [i.brand.name + ', ' + i.name, i.id] }
        end
      end
      field :image_interior, :paperclip do
        label "Інтре'єр"
      end
      field :alt_inter
      field :title_inter
      field :floor_technical_datas

      field :image_structure, :paperclip do
        label 'Структура'
        help 'розмір зображення повинен бути 840x315'
      end
      field :alt_struct
      field :title_struct
      field :image_perspective, :paperclip do
        label 'Перспектива'
        help 'розмір зображення повинен бути 840x315'
      end
      field :alt_per
      field :title_per
    end

  end
end
