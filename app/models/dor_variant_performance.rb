class DorVariantPerformance < ActiveRecord::Base
  attr_readonly :dor_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :dor

  has_many :variants_colors
  attr_accessible :variants_colors
  rails_admin do
    navigation_label 'Двері'
    list do
      field :image
      field :alt_image
      field :description_image
      field :title_image
    end
    edit do
      field :image
      field :alt_image
      field :description_image
      field :title_image
      field :variants_colors
    end
  end
end
