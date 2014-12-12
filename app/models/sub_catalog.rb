class SubCatalog < ActiveRecord::Base
  attr_accessible :name, :image, :main_catalog_id, :description

  attr_accessible :sub_catalog_url

  has_attached_file :image

  belongs_to :main_catalog
  validates_presence_of :main_catalog, :message => "Заповніть поле головний каталог. Бранд не збережений."

  has_many :brands
  accepts_nested_attributes_for :brands, allow_destroy: true
  attr_accessible :brands

  validates :name, :uniqueness => true, presence: true
  before_validation :generate_sub_catalog_url
  def generate_sub_catalog_url
    self.sub_catalog_url = name.parameterize
  end

  has_one :seo_dynamic
  accepts_nested_attributes_for :seo_dynamic
  attr_accessible :seo_dynamic_attributes

  rails_admin do
    navigation_label 'Каталог'
    label 'Під каталог'
    label_plural 'Під каталоги'

    list do
      field :id
      field :name
      field :main_catalog
      field :description
    end

    edit do
      field :name
      field :main_catalog do
        label "Головний каталог"
        help 'Будь-ласка виберіть головний каталог'
      end
      field :description, :ck_editor do
        label 'Опис'
        help 'Опис до підкаталога, якщо він потрібний'
      end
      field :seo_dynamic do
        label 'SEO'
      end
    end
  end
end
