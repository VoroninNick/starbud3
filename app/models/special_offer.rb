class SpecialOffer < ActiveRecord::Base
  attr_accessible :name, :image

  has_attached_file :image, styles:{
      thumb: "200x200>"
  },url:'/assets/images/special-offers/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_one :door

  rails_admin do
    navigation_label 'Іконки акцій'
    label 'Іконка акції'
    label_plural 'Іконки акцій'

    list do
      field :name
      field :image
    end

    edit do
      field :name
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення повинен бути 200 x 200'
      end
    end
  end
end
