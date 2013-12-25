class DoorColorOption < ActiveRecord::Base
  attr_accessible :name, :door_variants_fulfillment_option_id, :image, :alt_image, :description_image, :title_image, :delete_image

  has_attached_file :image

  belongs_to :door_variants_fulfillment_option

  accepts_nested_attributes_for :door_variants_fulfillment_option#, :allow_destroy => true
  attr_accessible :door_variants_fulfillment_option_attributes#, :allow_destroy => true

  rails_admin do
    navigation_label 'Двері'
    label 'Варіанти кольору'
    label_plural 'Варіанти кольору'

    list do
      field :name
      field :image
      field :alt_image
      field :description_image
      field :title_image
      field :door_variants_fulfillment_option

    end

    edit do
      field :name
      field :image, :paperclip do

      end
      field :alt_image
      field :description_image
      field :title_image
      #field :door_variants_fulfillment_option

    end
  end
end
