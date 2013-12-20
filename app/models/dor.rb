class Dor < ActiveRecord::Base
  attr_accessible :name, :descriptions, :action_id, :collection_id, :brand_id

  belongs_to :collection

  has_many :dor_variant_performances

  has_many :variants_colors

  rails_admin do
    navigation_label 'Двері'
    label 'Двері'
    label_plural 'Двері'
    list do
      field :name
      field :descriptions

    end

    edit do
      field :name
      field :descriptions, :ck_editor do
      end
      field :collection
      field :dor_variant_performances
    end
  end
end
