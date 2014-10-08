class FeedbackEmail < ActiveRecord::Base
  attr_accessible :email

  rails_admin do
    navigation_label 'Зворотній звязок'
    label 'Електронна скринька'
    label_plural 'Електронний адрес'

    list do
      field :email
    end

    edit do
      field :email do
        label 'Електронна скринька'
        help 'Введіть адрес електронної скриньки на який будуть відправлятись листи з форми зворотнього звязку.'
      end
    end

  end
end
