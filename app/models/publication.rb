class Publication < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :description, :url

  has_attached_file :image, styles:{
      thumb: "260x260#", medium: "454x322#", large: "800x800>"
  },url:'/assets/images/publications/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_url
  def generate_url
    self.url = title.parameterize
  end

  has_one :seo_dynamic
  accepts_nested_attributes_for :seo_dynamic, allow_destroy: true
  attr_accessible :seo_dynamic_attributes

  rails_admin do
    navigation_label 'Публікації'
    label 'Корисні статті'
    label_plural 'Корисні статті'

    list do
      field :title
      field :image
      field :short_description
      field :description
    end

    edit do
      field :title
      field :short_description
      field :description, :ck_editor do
      end
      field :image, :paperclip do
        label 'Зображення'
        help 'Зображення повинне мати розмір 800 х 800'
      end
      field :seo_dynamic do
        label 'SEO'
      end
    end
  end

end
