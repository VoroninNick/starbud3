class DProductImage < ActiveRecord::Base
  attr_accessible :imageable_id, :imageable_type, :image, :thumb, :title, :alt

  belongs_to :imageable, polymorphic: true

  has_attached_file :image,
                    styles: { large: "1054x593#"},
                    convert_options: { large: "-quality 94 -interlace Plane" },
                    url: "/assets/images/:class/:id/image_:style.:extension",
                    path:':rails_root/public:url'

  has_attached_file :thumb,
                    styles: { thumb: "242x70#"},
                    convert_options: { thumb: "-quality 94 -interlace Plane" },
                    url: "/assets/images/:class/thumb/:id/image_:style.:extension",
                    path:':rails_root/public:url'

  validates_presence_of :title, :message => "Введіть назву! Поле не може бути пустим."
  validates_presence_of :image, :message => "Виберіть зображення! Поле не може бути пустим."
  validates_presence_of :thumb, :message => "Виберіть зображення! Поле не може бути пустим."

  rails_admin do
    label 'Фотографія'
    label_plural 'Фотографії'
    visible false
    edit do
      field :title do
        label 'Назва зображення'
        help 'Показується при наведенні на картинку'
      end
      field :alt do
        label 'Альтернативний текст'
        help 'Текст який відображається у випадку не загрузки фотографії'
      end
      field :image, :paperclip do
        label 'Зображення'
        help 'Зображення для альбому повинне бути 1054. / 593.'
      end
      field :thumb, :paperclip do
        label 'Зображення'
        help 'Зображення для альбому повинне бути 242. / 70.'
      end
    end
  end
end
