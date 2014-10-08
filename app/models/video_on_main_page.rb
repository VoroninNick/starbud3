class VideoOnMainPage < ActiveRecord::Base
  attr_accessible :title, :video_url, :descriptions

  rails_admin do
    navigation_label 'На головну'
    label 'Цікаве відео'
    label_plural 'Цікаві відео'
    list do
      field :title
      field :video_url
      field :descriptions
    end
    edit do
      field :title
      field :video_url  do
        label '?controls=2&showinfo=0'
        help 'Добавте після адресу відео код що міститься збоку'
      end
      field :descriptions
    end
  end
end
