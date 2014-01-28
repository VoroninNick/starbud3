class MainBanner < ActiveRecord::Base
  attr_accessible :name

  has_many :main_banner_slides
  accepts_nested_attributes_for :main_banner_slides
  attr_accessible :main_banner_slides_attributes

  rails_admin do
    navigation_label 'Слайдери'
    label 'Банер на головну'
    label_plural 'Банери на головну'

    list do
      field :name
      field :main_banner_slides
    end
    edit do
      field :name do
        label ''
        help ''
      end
      field :main_banner_slides do
        label ''
        help ''
      end
    end
  end
end
