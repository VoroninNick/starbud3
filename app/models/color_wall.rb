class ColorWall < ActiveRecord::Base
  attr_accessible :name, :public, :index_sort, :render_interiors_id

  belongs_to :render_interior

  has_many :color_wall_images
  accepts_nested_attributes_for :color_wall_images, allow_destroy: true
  attr_accessible :color_wall_images_attributes

  rails_admin do
    parent RenderInterior
    label "КОЛІР СТІН"
    label_plural "КОЛЬОРИ СТІН"

    list do
      field :name
      field :public
    end

    edit do
      field :render_interior do
        label "Рендер інтер'єру"
        help "Виберіть рендер інтер'єру до якого належіть цей колір стіни"
      end
      field :name do
        label 'Назва'
        help ''
      end
      field :color_wall_images do
        label 'Зображення'
        help 'Рендер та іконка'
      end
      field :public do
        label 'Активний'
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
