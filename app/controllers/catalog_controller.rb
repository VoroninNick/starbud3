class CatalogController < ApplicationController
  #layout 'layout-catalog'
  def all_brands
    @brand = SubCatalog.find_by_name(params[:sub_catalog]).brands
  end
  def all_collections
    @collections = Brand.find_by_name(params[:brand]).collections
  end
  def all_products
    #@door_collection = Collection.find_by_collection_url(params[:name])
    @door = Collection.find_by_name(params[:collection]).doors
    @door_collection = Door.find_by_door_url(params[:name])
  end
  def door
    #@product_door = Door.find_by_door_url(params[:door_name])
    @door_test = Door.find_by_door_url(params[:name])
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
