class Floor < ActiveRecord::Base
  attr_accessible :name, :image_interior, :image_structure, :image_perspective, :action_id, :collection_id, :brand_id

  has_attached_file :image_interior
  has_attached_file :image_structure
  has_attached_file :image_perspective

  belongs_to :collection

  has_many :floor_technical_datas
  accepts_nested_attributes_for :floor_technical_datas#, :allow_destroy => true
  attr_accessible :floor_technical_datas_attributes#, :allow_destroy => true


  #before_validation :floor_url
  #def generate_floor_url
  #  self.floor_url ||= name.parameterize
  #end
  rails_admin do
    navigation_label 'Підлога'
    label 'Підлога'
    label_plural 'Підлога'

    list do
      field :name
      field :collection
      field :image_interior
      field :floor_technical_datas
      field :image_structure
      field :image_perspective
    end

    edit do
      field :name
      field :collection
      field :image_interior, :paperclip do
        label "Інтре'єр"
      end
      field :floor_technical_datas

      field :image_structure, :paperclip do
        label 'Структура'
      end
      field :image_perspective, :paperclip do
        label 'Перспектива'
      end
    end

  end
end
