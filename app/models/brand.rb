class Brand < ActiveRecord::Base
  attr_accessible :name, :image, :country, :sub_catalog_id, :brand_url

  has_attached_file :image

  belongs_to :sub_catalog
  attr_accessible :sub_catalog

  has_many :collections
  attr_accessible :collections

  has_many :dors

  validates :name, :uniqueness => true, presence: true
  before_validation :generate_brand_url
  def generate_brand_url
    self.brand_url ||= name.parameterize
  end

  rails_admin do
    navigation_label 'Каталог'
    label 'Бранд'
    label_plural 'Бренди'

    list do
      field :name
      field :image
      field :country
      field :sub_catalog

    end

    edit do
      field :name
      field :image
      field :country
      field :sub_catalog
      field :dors
    end
  end
end
