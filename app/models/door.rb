class Door < ActiveRecord::Base
  attr_accessible :name, :descriptions, :action_id, :collection_id, :brand_id, :door_url, :special_offer_id

  belongs_to :collection
  validates_presence_of :collection, :message => "Заповніть поле Колекція. Двері не збережені."


  belongs_to :special_offer

  has_many :door_variants_fulfillment_options
  accepts_nested_attributes_for :door_variants_fulfillment_options, allow_destroy: true
  attr_accessible :door_variants_fulfillment_options_attributes

  has_many :dor_informations
  accepts_nested_attributes_for :dor_informations, allow_destroy: true
  attr_accessible :dor_informations_attributes

  attr_accessible :table

  has_one :seo_dynamic
  accepts_nested_attributes_for :seo_dynamic, allow_destroy: true
  attr_accessible :seo_dynamic_attributes

  before_validation :generate_door_url
  def generate_door_url
    self.door_url = name.parameterize
  end

  def self.find_names_by_collection_url(name)
    query = "select d.name as name from collections c, doors d where c.id = d.collection_id and c.name = '#{name}'"
    rows = ActiveRecord::Base.connection.execute(query)
    names = []
    rows.each do |row|
      names.push(row['name'])
    end
    names
  end

  rails_admin do
    navigation_label 'Продукти'
    label 'Двері'
    label_plural 'Двері'

    list do
      field :name
      field :special_offer
      field :collection
      field :descriptions
    end

    edit do
      field :name do
        label 'Назва дверей'
      end
      field :special_offer
      field :collection_id, :enum do

        enum do
          Collection.includes(:brand).all.map { |i| [i.brand.name + ', ' + i.name, i.id] }
          #Collection.includes(:brand).all.map { |i| [(i.brand.empty? ? '' : i.brand.name + ', ')  + i.name, i.id] }
        end

        label 'Колекція'
        help 'Із випадаючого списку виберіть колекцію до якої належать дані двері.'
      end
      field :descriptions, :ck_editor do
          label 'Опис дверей'
      end
      field :table, :ck_editor do
        label 'Інформаційна табличка про двері

        <div class="door-info-table">
<div class="columns large-5 left">
<div class="title-table">Шпон</div>

<div class="cont-table">Палісандер</div>

<div class="end-table">&nbsp;</div>
</div>

<div class="columns large-7 right">
<div class="title-table">Види скла</div>

<div class="cont-table">Мателюкс графіт крісталайз</div>

<div class="end-table">&nbsp;</div>
</div>
</div>'
        help 'Перед початком вводу інформації, скопіюйте код зліва і вставте його в ckeditor, в режимі редагування коду. Використовуйте його як шаблон.'
      end
      field :door_variants_fulfillment_options do
        label 'Варіанти виконання'
        help 'Тут можна добавити варіанти виконання. І там же будуть варіанти кольору.'
      end
      field :dor_informations do
        label 'Додаткова інформація'
        help 'Технічні харектеристики. Догляд. Умови гарантії.'
      end
      field :seo_dynamic do
        label 'SEO'
      end
    end

  end
end
