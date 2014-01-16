class DorInformation < ActiveRecord::Base
  attr_accessible :door_id, :specifications, :care, :environment

  belongs_to :door

  rails_admin do
    navigation_label 'Двері'
    label 'Додаткова інформація'
    label_plural 'Додаткова інформація'

    list do
      field :specifications
      field :care
      field :environment

    end

    edit do
      field :specifications, :ck_editor do
         label 'Технічні харектеристики'
      end
      field :care, :ck_editor do
        label 'Догляди'
      end
      field :environment, :ck_editor do
        label 'Умови гарантії'
      end

    end
  end
end
