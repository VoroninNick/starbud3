class ContanctPage < ActiveRecord::Base
  attr_accessible :address, :working_hours, :phones

  #has_many :region_contacts
  #accepts_nested_attributes_for :region_contacts
  #attr_accessible :region_contacts_attributes

  rails_admin do
    navigation_label 'Контакти'
    label 'Контакт'
    label_plural 'Контакти'

    list do
      field :address
      field :working_hours
      field :phones
      #field :region_contacts
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
      #field :region_contacts do
      #  label ''
      #  help ''
      #end
    end
  end
end
