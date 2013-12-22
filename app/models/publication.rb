class Publication < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :description, :url

  has_attached_file :image

  before_validation :generate_article_url
  def generate_article_url
    self.url ||= title.parameterize
  end

  rails_admin do
    navigation_label 'Корисні статті'
    label 'Стаття'
    label_plural 'Статті'

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
