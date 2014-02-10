class Collection < ActiveRecord::Base
  attr_accessible :name, :image, :descriptions, :actions_label_id, :brand_id, :collection_url

  has_attached_file :image, styles:{
      thumb: "537x158#", large: "1074x315#"
  },url:'/assets/images/collection/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  belongs_to :sub_catalog
  attr_accessible :sub_catalog

  #belongs_to :sub_catalog, :class_name => "Brand"
  #has_many :collections, :class_name => "Brand", :foreign_key => "sub_catalog_id"

  belongs_to :brand
  attr_accessible :brand

  has_many :doors
  has_many :floors

  #validates :name, :uniqueness => true, presence: true
  before_validation :generate_collection_url
  def generate_collection_url
    self.collection_url ||= name.parameterize
  end

  has_one :seo_dynamic
  accepts_nested_attributes_for :seo_dynamic
  attr_accessible :seo_dynamic_attributes

  rails_admin do
    navigation_label 'Каталог'
    label 'Колекція'
    label_plural 'Колекції'

    list do
      field :name
      field :image
      field :descriptions
      field :brand
    end

    edit do
      field :name do
        label "Назва колекції"
      end
      field :image do
        label 'Зображення для колекції'
        help 'Розмір зображення повинен бути 1074 x 315'
      end
      field :descriptions, :ck_editor do
        label "Опис до колекції"
      end
      field :brand_id, :enum do

        enum do
          Brand.includes(:sub_catalog).all.map { |i| [i.sub_catalog.name + ', ' + i.name, i.id] }
        end

        label "Бренд"
        help "Виберіть із випадаючого списку назву бренду ,до якого відноситься колекція яку ви вводите."
      end
      field :seo_dynamic do
        label 'SEO'
      end
    end
  end
end
