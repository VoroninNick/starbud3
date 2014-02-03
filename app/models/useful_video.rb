class UsefulVideo < ActiveRecord::Base
  attr_accessible :title, :video_url, :descriptions

rails_admin do
  navigation_label 'Публікації'
  label 'Цікаві відео'
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
    end
    field :descriptions
  end
end
end
