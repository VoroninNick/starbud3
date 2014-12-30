class MainController < ApplicationController
  def index
    @title = "Головна"
    @interesting_news = InterestNews.order('updated_at desc').limit(2)
    @interest_video = VideoOnMainPage.order('updated_at desc').limit(3)
    @publication_main_page = Publication.order('updated_at desc').limit(4)
    @main_banner = MainBanner.order('updated_at desc')
    @subs = Subscribe.new
    @index_about = IndexPageAboutCompany.order('updated_at asc').limit(1)
  end
  def about
    @title = "Про нас"
    @about_us = AboutArticle.order('index_article asc')
    @main_article = ArticleAbout.order('updated_at desc')

  end
  def catalog
    @title = "Каталог"
    @main_catalog = MainCatalog.all()
    @brand = Brand.order('updated_at desc')
  end
  def actions
    @title = "Акції"
    @promotion_item = Promotion.order('updated_at desc')

    #require 'timespan'
    #time_span_from_dates = Date.diff(Promotion.first.begin_promotion, Promotion.first.end_promotion)
  end
  def publications
    @title = "Публікації"
  end

  def contacts
    @title = "Контакти"
    @contact = Contact.new

    @contact_page = ContanctPage.order('updated_at desc')
    @region_person = RegionContact.order('region asc')

  end

  def terms_of_use
    @tou = TermsOfUse.all
  end

  def send_message
    ContactMailer.new_message(@contact).deliver
  end

  def call_order
    name = params[:name]
    phone = params[:phone]
    call_time_begin = params[:call_time_begin]
    call_time_end = params[:call_time_end]
    CustomForms.call_order_data(name, phone, call_time_begin, call_time_end).deliver
  end
  def order_product
    brand = params[:brand_name]
    collection = params[:collection_name]
    product = params[:product]
    name = params[:name]
    email = params[:email]
    phone = params[:phone]
    message = params[:message]
    CustomForms.order_product_data(brand, collection, product, name, phone, email, message).deliver
  end
end
