class DoorVariantsFulfillmentOption < ActiveRecord::Base
  attr_accessible :name, :door_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :door

  has_many :door_color_options

  accepts_nested_attributes_for :door_color_options#, :allow_destroy => true
  attr_accessible :door_color_options_attributes#, :allow_destroy => true

  rails_admin do
    navigation_label 'Двері'
    label 'Варіанти виконання'
    label_plural 'Варіанти виконання'
    list do
      field :name
      field :image
      field :alt_image
      field :description_image
      field :title_image
      field :door_color_options

    end

    edit do
      field :name
      field :image
      field :alt_image
      field :description_image
      field :title_image
      field :door_color_options

    end
  end
end
