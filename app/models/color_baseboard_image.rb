class ColorBaseboardImage < ActiveRecord::Base
  attr_accessible :name, :image, :thumb, :color_baseboard_id

  belongs_to :color_baseboard

  validates_presence_of :name, :message => "Введіть назву! Поле не може бути пустим."
  validates_presence_of :image, :message => "Виберіть зображення! Поле не може бути пустим."
  validates_presence_of :thumb, :message => "Виберіть зображення! Поле не може бути пустим."

  has_attached_file :image, styles:{ large: "1054x593#"
  },url:'/assets/images/visual_designer/:class/image/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  has_attached_file :thumb, styles:{ thumb: "242x70#"
  },url:'/assets/images/visual_designer/:class/image/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  rails_admin do
    visible false
    parent ColorBaseboard
    label "Зображення"
    label_plural "Зображення"

    list do
      field :name
      field :image
      field :thumb
    end

    edit do
      field :name do
        label ''
        help ''
      end
      field :image, :paperclip do
        label ''
        help ''
      end
      field :thumb, :paperclip do
        label ''
        help ''
      end
    end
  end
end
