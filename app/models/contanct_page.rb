class ContanctPage < ActiveRecord::Base
  attr_accessible :address, :working_hours, :phones

  rails_admin do
    navigation_label 'Контакти'
    label 'Контакт'
    label_plural 'Контакти'

    list do
      field :address
      field :working_hours
      field :phones
    end
    edit do
      field :address, :ck_editor do
        label ''
        help ''
      end
      field :working_hours, :ck_editor do
        label ''
        help ''
      end
      field :phones, :ck_editor do
        label ''
        help ''
      end
    end
  end
end
