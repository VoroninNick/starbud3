class Collection < ActiveRecord::Base
  attr_accessible :name, :image, :descriptions, :actions_label_id, :brand_id, :collection_url

  has_attached_file :image

  belongs_to :brand

  has_many :doors

  validates :name, :uniqueness => true, presence: true
  before_validation :generate_collection_url
  def generate_collection_url
    self.collection_url ||= name.parameterize
  end

  rails_admin do
    navigation_label 'Каталог'
    label 'Колекція'
    label_plural 'Колекції'

    list do
      field :name
      field :image
      field :descriptions, :ck_editor do

      end

    end

    edit do
      field :name
      field :image
      field :descriptions
      field :brand
    end
  end
end
