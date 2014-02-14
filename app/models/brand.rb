class Brand < ActiveRecord::Base
  attr_accessible :name, :image, :country, :sub_catalog_id, :brand_url

  attr_accessible :text_to_brand

  has_attached_file :image

  belongs_to :sub_catalog
  attr_accessible :sub_catalog
  validates_presence_of :sub_catalog, :message => "Заповніть поле суб катол. Бранд не збережений."

  has_many :collections
  attr_accessible :collections

  has_many :int_exts
  has_many :exteriors

  has_many :related_products

  #validates :name, :uniqueness => true, presence: true

  before_validation :generate_brand_url
  def generate_brand_url
    self.brand_url = name.parameterize
  end

  has_one :seo_dynamic
  accepts_nested_attributes_for :seo_dynamic
  attr_accessible :seo_dynamic_attributes

  rails_admin do
    navigation_label 'Каталог'
    label 'Бренд'
    label_plural 'Бренди'

    list do
      field :name
      field :image
      field :country
      field :sub_catalog

    end

    edit do
      field :name do
        label "Назава бренду"
      end
      field :image do
        label "Логотип бренду"
      end
      field :country do
        label "Країна виробник"
      end
      field :text_to_brand, :ck_editor do
        label "Текст для бренду"
        help "Це поле передбачене виключно для брендів Інтер'єру, Екстер'єру, та Супутніх товарів."
      end
      field :sub_catalog_id, :enum do

        enum do
          SubCatalog.includes(:main_catalog).all.map { |i| [i.main_catalog.name + ', ' + i.name, i.id] }
        end
        label "Під каталог"
        help "Виберіть із випадаючого списку назву під каталогу ,до якого відноситься бренд який ви заповняєте."
      end
      field :seo_dynamic do
        label 'SEO'
      end

    end
  end
end
