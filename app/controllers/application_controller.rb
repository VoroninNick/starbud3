class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # custom 404
  def page_not_found
    respond_to do |format|
      format.html { render template: 'errors/not_found_error', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
  end

  def server_error
    respond_to do |format|
      format.html { render template: 'errors/internal_server_error', layout: 'layouts/error', status: 500 }
      format.all  { render nothing: true, status: 500}
    end
  end

  helper_method :seo_meta_tags
  def seo_meta_tags
    return SeoMetaTags.order('updated_at asc').limit(1)
  end
  helper_method :main_catalog
  def main_catalog
    return  MainCatalog.order('index_main_catalog asc')
  end

  helper_method :main_catalog_ia
  def main_catalog_ia
    return  InterestNews.order('updated_at desc').limit(2)
  end
  helper_method :main_catalog_iv
  def main_catalog_iv
    return  UsefulVideo.order('updated_at desc').limit(2)
  end
  helper_method :main_catalog_ha
  def main_catalog_ha
    return  Publication.order('updated_at desc').limit(2)
  end
  helper_method :main_carousel_label
  def main_carousel_label
    return MainLabelCarousel.order('index_sorting desc')
  end

  helper_method :pdf_catalog
  def pdf_catalog
    return PdfCatalog.order('selected_catalog').limit(1)
  end

  helper_method :vd_brands

  def vd_brands
   @brands = Brand.where("sub_catalog_id = 1").order("name asc")
  end

  helper_method :vd_doors

  def vd_doors
    @doors = Door.where('collection_id = 1 ')
    return @doors
  end
end
