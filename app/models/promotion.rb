class Promotion < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :begin_promotion, :end_promotion, :description

  has_attached_file :image, styles:{
      thumb: "360x132>", large: "1350x480#"
  },url:'/assets/images/promotions/:id/image_:style.:extension',
                    path:':rails_root/public:url'

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
        label 'Зображення'
        help 'Розмір зображення повинен бути 1350 x 480'
      end
      field :begin_promotion
      field :end_promotion
      field :description, :ck_editor do

      end
    end
    end
end
