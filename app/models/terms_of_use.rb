class TermsOfUse < ActiveRecord::Base
  attr_accessible :descriptions

  rails_admin do
    navigation_label 'Правила використання'
    label 'Правила використання'
    label_plural 'Правила використання'

    list do
      field :descriptions
    end

    edit do
      field :descriptions, :ck_editor do
        label 'Правила використання'
        help ''
      end
    end

  end
end
