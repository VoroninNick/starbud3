class VariantsColor < ActiveRecord::Base
  attr_readonly :dor_id, :dor_variant_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :dor_variant_performance

  belongs_to :dor
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
    end
  end
end
