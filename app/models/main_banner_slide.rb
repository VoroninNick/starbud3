class MainBannerSlide < ActiveRecord::Base
  attr_accessible :name, :back_image, :layer_image, :content, :index_sorting, :future, :main_banner_id

  attr_accessible :slide_link

  has_attached_file :back_image, styles:{
      large: "2500x1600>"
  },url:'/assets/images/main_banner/slide/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  has_attached_file :layer_image, styles:{
      large: "500x600>"
  },url:'/assets/images/main_banner/slide/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  belongs_to :main_banner


  rails_admin do
    #navigation_label 'Слайдери'
    #label 'Банер слайд'
    #label_plural 'Банери слайди'

    list do
      field :name
      field :future
      field :index_sorting
      field :back_image
      field :layer_image
      field :content
      field :slide_link
    end
    edit do
      field :name do
        label ''
        help ''
      end
      field :future do
        label ''
        help ''
      end
      field :index_sorting do
        label ''
        help ''
      end
      field :back_image, :paperclip do
        label 'Фонове зображення'
        help 'Повинне мати розмір 2500 х 1600'
      end
      field :layer_image, :paperclip do
        label 'Слойове зображення'
        help 'Повинне мати розмір 500 х 600'
      end
      field :content, :ck_editor do
        label ''
        help ''
      end
      field :slide_link do
        label ''
        help ''
      end
    end
  end
end
