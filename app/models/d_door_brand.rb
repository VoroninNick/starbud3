class DDoorBrand < ActiveRecord::Base
  attr_accessible :name, :slug

  validates_presence_of :name, :message => "Заповніть це поле! Поле не може бути пустим."
  # validates_presence_of :image, :message => "Виберіть фотографію, відповідно до зазначених розмірів! Поле не може бути пустим."
  # validates_presence_of :description, :message => "Заповніть це поле! Поле не може бути пустим."

  has_many :d_door_collections
  attr_accessible :d_door_collections
  has_attached_file :image,
                    styles: { thumb: "300x300#", large: "600x600>" },
                    convert_options: { thumb: "-quality 94 -interlace Plane",
                                       large: "-quality 94 -interlace Plane" },
                    url: "/assets/images/:class/:id/image_:style.:extension",
                    path:':rails_root/public:url'

  # belongs_to :ds_category, inverse_of: :drink_sets
  #
  # has_many :photo_galleries, as: :imageable
  # attr_accessible :photo_galleries
  # accepts_nested_attributes_for :photo_galleries
  # attr_accessible :photo_galleries_attributes
  #
  # has_many :product_properties, as: :characteristic
  # attr_accessible :product_properties
  # accepts_nested_attributes_for :product_properties
  # attr_accessible :product_properties_attributes
  #
  # has_and_belongs_to_many :product_pack, join_table: 'set_packs'

  before_validation :generate_slug
  def generate_slug
    self.slug = self.name.parameterize
  end


  rails_admin do
    navigation_label 'Візуальний конструктор'
    label 'Ламінат Бренд'
    label_plural 'Ламінат Бренди'

    list do
      field :name do
        label 'Назва  бренду'
      end
    end

    edit do
      field :name do
        label 'Назва бренду'
        help ''
      end
    end
  end
end
