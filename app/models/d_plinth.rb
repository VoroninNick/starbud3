class DPlinth < ActiveRecord::Base
  attr_accessible :name, :slug, :public, :index_sort, :image, :ico

  belongs_to :render_interior
  attr_accessible :render_interior_id

  belongs_to :d_plinth_collection
  attr_accessible :d_plinth_collection_id

  has_attached_file :image
  has_attached_file :icon

  has_many :d_product_images, as: :imageable
  attr_accessible :d_product_images
  accepts_nested_attributes_for :d_product_images, allow_destroy: true
  attr_accessible :d_product_images_attributes

  rails_admin do
    parent DPlinthCollection
    label "Плінтус"
    label_plural "Плінтуси"

    list do
      field :name do
        label 'Назва'
        help ''
      end
      field :d_plinth_collection do
        label 'Колекція'
      end
      field :public do
        label 'Активний'
        help ''
      end
      field :index_sort do
        label 'Сортування'
        help ''
      end
    end

    edit do
      field :name do
        label 'Назва'
        help ''
      end
      field :d_plinth_collection do
        label 'Колекція'
      end
      field :d_product_images do
        label 'Зображення'
      end
      field :public do
        label 'Активний'
        help ''
      end
      field :index_sort do
        label 'Сортування'
        help ''
      end
    end
    # do Rails admin hide belongs_to field in has_many nested form
    nested do
      configure :render_interior do
        hide
      end
    end
    #end Rails admin hide belongs_to field in has_many nested form
  end

end
