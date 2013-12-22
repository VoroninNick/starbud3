class CatalogController < ApplicationController
  #layout 'layout-catalog'
  def all_brands
    #@main_catalog = MainCatalog.all()
    @brand = SubCatalog.find_by_name(params[:sub_catalog]).brands
  end
  def all_collections
    @collections = Brand.find_by_name(params[:brand]).collections
  end
  def catalog_layout
    #@catalog_action ='item'
    #render :template => 'main/catalog'
  end

  def item
    #render :template => 'main/catalog'
  end
  def show_item

  end

end
