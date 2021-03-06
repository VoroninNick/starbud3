class AssetsFloor < PromotionPrice


  rails_admin do
    navigation_label 'Акційні прайси'
    label 'Підлога'
    label_plural 'Підлоги'

    edit do
      field :published do
        label 'Чи публікувати?'
      end
      field :title do
        label 'Назва:'
      end
      field :price, :paperclip do
        label 'Файл:'
      end
      field :comment do
        label 'Коментар:'
      end
      field :custom_date do
        label 'Дата:'
      end
      field :position do
        label 'Позиція:'
      end
    end

  end
  scope :published, where(published: 't').order(position: :desc)
end