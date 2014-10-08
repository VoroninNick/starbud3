class Laminate < ActiveRecord::Base
  attr_accessible :name, :public, :index_sort, :render_interiors_id

  belongs_to :render_interior
  has_many :laminate_images
  accepts_nested_attributes_for :laminate_images, allow_destroy: true
  attr_accessible :laminate_images_attributes

  rails_admin do
    parent RenderInterior
    label "Ламінат"
    label_plural "Ламінати"

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
      field :laminate_images do
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
