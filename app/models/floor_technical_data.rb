class FloorTechnicalData < ActiveRecord::Base
  attr_accessible :name, :floor_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :about_article
  rails_admin do
    navigation_label 'Підлога'
    label 'Технічні дані'
    label_plural 'Технічні дані'

    list do
      field :name
      field :image
      field :alt_image
      field :description_image
      field :title_image
    end

    edit do
      field :name
      field :image, :paperclip do
        label 'Image'
      end
      field :alt_image
      field :description_image
      field :title_image
    end
  end
end
