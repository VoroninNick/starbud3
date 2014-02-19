class DoorColorOption < ActiveRecord::Base
  attr_accessible :name, :door_variants_fulfillment_option_id, :image, :alt_image, :description_image, :title_image, :delete_image

  has_attached_file :image, styles:{
      thumb: "266x590>", large: "1400x700#"
  },url:'/assets/images/door/door_color_option/:id/image_:style.:extension',
                    path:':rails_root/public:url'


  belongs_to :door_variants_fulfillment_option



  rails_admin do

    navigation_label 'Двері'
    label 'Варіанти кольору'
    label_plural 'Варіанти кольору'

    list do
      field :name
      field :image
      field :alt_image
      field :title_image
    end

    edit do
      field :name
      field :image, :paperclip do
        label 'Варіанти кольору'
        help ' Розмір фотографії 1400x700.'
      end
      field :alt_image
      field :title_image
    end

  end
end
