class Door < ActiveRecord::Base
  attr_accessible :name, :descriptions, :action_id, :collection_id, :brand_id, :door_url

  belongs_to :collection

  has_many :door_variants_fulfillment_options
  accepts_nested_attributes_for :door_variants_fulfillment_options#, :allow_destroy => true
  attr_accessible :door_variants_fulfillment_options_attributes#, :allow_destroy => true


  has_many :dor_informations
  accepts_nested_attributes_for :dor_informations#, :allow_destroy => true
  attr_accessible :dor_informations_attributes#, :allow_destroy => true

  before_validation :door_url
  def generate_door_url
    self.door_url ||= name.parameterize
  end
  rails_admin do
    navigation_label 'Двері2'
    label 'Двері'
    label_plural 'Двері'

    list do
      field :name
      field :collection
      field :door_variants_fulfillment_options
      field :descriptions
      field :dor_informations
    end

    edit do
      field :name
      field :collection
      field :door_variants_fulfillment_options
      field :descriptions, :ck_editor do

      end
      field :dor_informations

    end

  end
end
