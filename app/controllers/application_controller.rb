class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :main_catalog
  def main_catalog
    return  MainCatalog.all()
  end

  helper_method :main_catalog_ia
  def main_catalog_ia
    return  InterestNews.order('updated_at desc').limit(3)
  end
  helper_method :main_catalog_iv
  def main_catalog_iv
    return  UsefulVideo.order('updated_at desc').limit(3)
  end
  helper_method :main_catalog_ha
  def main_catalog_ha
    return  Publication.order('updated_at desc').limit(3)
  end
end
