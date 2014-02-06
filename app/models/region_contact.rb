class RegionContact < ActiveRecord::Base
  attr_accessible :region, :name, :phones, :mails, :contanct_page_id, :index_sorting

  rails_admin do
    navigation_label 'Контакти'
    label 'Регіональний представник'
    label_plural 'Регіональні представники'

    list do
      field :region
      field :name
      field :index_sorting
      field :phones
      field :mails
    end
    edit do
      field :region do
        label ''
        help ''
      end
      field :name  do
        label ''
        help ''
      end
      field :index_sorting do
        label ''
        help ''
      end
      field :phones, :ck_editor do
        label ''
        help ''
      end
      field :mails do
        label ''
        help ''
      end
    end
  end
end
