class RenderInterior < ActiveRecord::Base
  attr_accessible :name, :image, :thumb, :position_x, :position_y, :public, :index_sort

  validates_presence_of :name, :message => "Введіть назву! Поле не може бути пустим."
  validates_presence_of :image, :message => "Виберіть рендер! Поле не може бути пустим."
  validates_presence_of :thumb, :message => "Виберіть зображення! Поле не може бути пустим."
  validates_presence_of :position_x, :message => "Введіть координату Х! Поле не може бути пустим."
  validates_presence_of :position_y, :message => "Введіть координату Y! Поле не може бути пустим."

  has_attached_file :image, styles:{ large: "1054x593#"
  },url:'/assets/images/visual_designer/:class/image/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  has_attached_file :thumb, styles:{ thumb: "228x128#"
  },url:'/assets/images/visual_designer/:class/thumb/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_many :d_doors
  attr_accessible :d_door_ids

  # accepts_nested_attributes_for :d_doors, allow_destroy: true
  # attr_accessible :d_doors_attributes

  has_many :color_walls

  accepts_nested_attributes_for :color_walls, allow_destroy: true
  attr_accessible :color_walls_attributes

  has_many :d_plinths
  attr_accessible :d_plinth_ids

  # accepts_nested_attributes_for :d_plinths, allow_destroy: true
  # attr_accessible :d_plinths_attributes

  rails_admin do
    navigation_label 'Візуальний конструктор'
    label "Рендер інтер'єру"
    label_plural "Рендери інтер'єрів"

    list do
      field :name
      field :thumb
      field :position_x
      field :position_y
      field :public
      field :index_sort
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
      field :position_x do
        label ''
        help ''
      end
      field :position_y do
        label ''
        help ''
      end
      field :d_doors do
        label 'ЛАМІНАТ'
        help ''
      end
      field :color_walls do
        label 'КОЛІР СТІН'
        help ''
      end
      field :d_plinths do
        label 'КОЛІР ПЛІНТУСА'
        help ''
      end
      field :public do
        label ''
        help ''
      end
      field :index_sort do
        label ''
        help ''
      end
    end
  end
end
