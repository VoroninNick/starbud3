class IndexPageAboutCompany < ActiveRecord::Base
  attr_accessible :description

  rails_admin do

    navigation_label "На головну"
    label "Текст про компанію"
    label_plural "Текст про компанію"

    list do
      field :description
    end

    edit do
      field :description, :ck_editor do

      end
    end
  end
end
