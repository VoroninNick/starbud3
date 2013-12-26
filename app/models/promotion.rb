class Promotion < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :begin_promotion, :end_promotion, :description

  has_attached_file :image

  rails_admin do
    navigation_label 'Акції'
    label 'Акція'
    label_plural 'Акції'

    list do
      field :title
      field :image
      field :short_description
      field :begin_promotion
      field :end_promotion
      field :description
    end

    edit do
      field :title
      field :short_description
      field :image, :paperclip do

      end
      field :begin_promotion
      field :end_promotion
      field :description, :ck_editor do

      end
    end
    end
end
