class UsefulVideo < ActiveRecord::Base
  attr_accessible :title, :video_url, :descriptions

rails_admin do
  navigation_label 'Публікації'
  label 'Корисні відео'
  label_plural 'Корисні відео'
  list do
     field :title
     field :video_url
     field :descriptions
  end
  edit do
    field :title
    field :video_url
    field :descriptions
  end
end
end
