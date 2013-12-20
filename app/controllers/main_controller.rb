class MainController < ApplicationController
  def index
    @title = "Головна"
    @main_catalog = MainCatalog.all()
  end
  def about
    @title = "Про нас"
    @about_us = AboutArticle.order('updated_at desc')

  end
  def catalog
    @title = "Каталог"
    @main_catalog = MainCatalog.all()
    @brand = Brand.order('updated_at desc')
  end
  def actions
    @title = "Акції"
  end
  def publications
    @title = "Публікації"

  end
  def contacts
    @title = "Контакти"
  end
end
