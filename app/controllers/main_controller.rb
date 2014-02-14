class MainController < ApplicationController
  def index
    @title = "Головна"
    @interesting_news = InterestNews.order('updated_at desc').limit(2)
    @interest_video = VideoOnMainPage.order('updated_at desc').limit(3)
    @publication_main_page = Publication.order('updated_at desc').limit(4)
    @main_banner = MainBanner.order('updated_at desc')
    @subs = Subscribe.new
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
end
