class PublicationBanner < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :description, :index_sorting, :link

  has_attached_file :image, styles:{
      large: "1800x600>"
  },url:'/assets/images/publication_banner/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  rails_admin do
    navigation_label 'Публікації'
    label 'Банер'
    label_plural 'Слайди'

    list do
      field :title
      field :image
      field :short_description
      #field :description
      field :index_sorting
      field :link
    end
    edit do
      field :title do
        label ''
        help ''
      end
      field :image do
        label ''
        help 'Розмір зображення 1800x600'
      end
      field :short_description do
        label ''
        help ''
      end
      #field :description do
      #  label ''
      #  help ''
      #end
      field :index_sorting do
        label ''
        help ''
      end
      field :link do
        label ''
        help ''
      end

    end
  end
end
