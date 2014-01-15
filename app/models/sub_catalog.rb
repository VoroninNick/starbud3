class SubCatalog < ActiveRecord::Base
  attr_accessible :name, :image, :main_catalog_id, :description

  attr_accessible :sub_catalog_url

  has_attached_file :image

  belongs_to :main_catalog

  has_many :brands
  attr_accessible :brands

  has_many :int_exts

  validates :name, :uniqueness => true, presence: true
  before_validation :sub_catalog_url
  def generate_sub_catalog_url
    self.sub_catalog_url ||= name.parameterize
  end

  rails_admin do
    navigation_label 'Каталог'
    label 'Під каталог'
    label_plural 'Під каталоги'

    list do
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
    end
  end
end
