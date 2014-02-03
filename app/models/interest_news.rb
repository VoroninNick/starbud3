class InterestNews < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :description, :url

  has_attached_file :image, styles:{
      thumb: "260x260#", large: "800x800>"
  },url:'/assets/images/interest_news/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  before_validation :generate_article_url
  def generate_article_url
    self.url ||= title.parameterize
  end

  rails_admin do
    navigation_label 'Публікації'
    label 'Свіжа новина'
    label_plural 'Свіжі новини'

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

    end

  end

end
