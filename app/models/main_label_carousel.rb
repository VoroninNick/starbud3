class MainLabelCarousel < ActiveRecord::Base
  attr_accessible :label_name, :label_image, :label_alt, :index_sorting

  attr_accessible :link

  has_attached_file :label_image, style:{thumb: '300x300>'},
                    url:'/assets/images/carousel/label/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  validates_attachment_presence :label_image
  validates_attachment_content_type :label_image, :content_type => ['image/jpeg', 'image/png', 'image/gif']

  rails_admin do
    navigation_label 'Слайдери'
    label 'Карусель, логотипи, головна...'
    label_plural 'Каруселі, логотипи, головна...'

    list do
      field :label_name
      field :index_sorting
      field :label_image
      field :label_alt
      field :link
    end
    edit do
      field :label_name do
        label ''
        help ''
      end
      field :index_sorting do
        label ''
        help ''
      end
      field :label_image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення повинен бути 300 x 300 '
      end
      field :label_alt do
        label ''
        help ''
      end
      field :link do
        label 'Ссилка'
        help ''
      end
    end
  end
end
