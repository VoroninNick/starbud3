class Publication < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :description, :url

  has_attached_file :image, styles:{
      thumb: "220x220#", large: "350x500#"
  },url:'/assets/images/publications/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_article_url
  def generate_article_url
    self.url ||= title.parameterize
  end

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
        #label 'image'
      end
      field :image, :paperclip do
        # whatever
      end
    end
  end

end
