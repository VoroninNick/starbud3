class DorInformation < ActiveRecord::Base
  attr_accessible :door_id, :specifications, :care, :environment

  belongs_to :door

  rails_admin do
    navigation_label 'Двері2'
    label 'Додаткова інформація'
    label_plural 'Додаткова інформація'

    list do
      field :specifications
      field :care
      field :environment

    end

    edit do
      field :specifications, :ck_editor do

      end
      field :care, :ck_editor do

      end
      field :environment, :ck_editor do

      end

    end
  end
end
