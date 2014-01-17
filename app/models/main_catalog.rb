class MainCatalog < ActiveRecord::Base
  attr_accessible :name, :image
  attr_accessible :index_main_catalog

  attr_accessible :main_catalogs_url

  has_attached_file :image

  has_many :sub_catalogs

  validates :name, :uniqueness => true, presence: true
  before_validation :main_catalogs_url
  def generate_main_catalogs_url
    self.main_catalogs_url ||= name.parameterize
  end

  rails_admin do
    navigation_label 'Каталог'
    label 'Головний каталог'
    label_plural 'Головні каталоги'

    list do
      field :name
      field :index_main_catalog
      field :image
    end

    edit do
      field :name
      field :index_main_catalog do
        label 'Індекс позиції в меню'
        help 'Введіть будьласка порядковий номер, за яким буде відсортоване головні каталоги меню.'
      end
      field :image
    end
  end

end
