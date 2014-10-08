class ColorBaseboard < ActiveRecord::Base
  attr_accessible :name, :public, :index_sort, :render_interiors_id

  belongs_to :render_interior

  has_many :color_baseboard_images
  accepts_nested_attributes_for :color_baseboard_images, allow_destroy: true
  attr_accessible :color_baseboard_images_attributes

  rails_admin do
    parent RenderInterior
    label "КОЛІР ПЛІНТУСА"
    label_plural "КОЛЬОРИ ПЛІНТУСІВ"

    list do
      field :name
      field :public
      field :index_sort
    end

    edit do
      field :render_interior do
        label ''
        help ''
      end
      field :name do
        label ''
        help ''
      end
      field :public do
        label ''
        help ''
      end
      field :index_sort do
        label ''
        help ''
      end
      field :color_baseboard_images do
        label ''
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
