class DoorVariantsFulfillmentOption < ActiveRecord::Base
  attr_accessible :name, :door_id, :image, :alt_image, :description_image, :title_image

  has_attached_file :image, styles:{
      thumb: "266x590#", large: "1400x700#"
  },url:'/assets/images/door/door_variants_fulfilment_option/:id/image_:style.:extension',
                    path:':rails_root/public:url'



  belongs_to :door

  has_many :door_color_options

  accepts_nested_attributes_for :door_color_options, allow_destroy: true
  attr_accessible :door_color_options_attributes

  rails_admin do
    visible false
    navigation_label 'Двері'
    label 'Варіанти виконання'
    label_plural 'Варіанти виконання'
    list do
      field :name
      field :image
      field :alt_image
      field :title_image
      field :door_color_options

    end

    edit do
      field :name
      field :image, :paperclip do
        label 'Варіанти виконання'
        help 'Перша завантажена фотографія буде відображатися як головна. Розмір фотографії 1400x700.'
      end
      field :alt_image
      field :title_image
      field :door_color_options

    end
  end
end
