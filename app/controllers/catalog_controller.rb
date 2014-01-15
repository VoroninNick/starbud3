class CatalogController < ApplicationController
  #layout 'layout-catalog'
  def all_brands
    @brand = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' ')).brands
    @current_sub_catalog = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @main_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' '))

    #@description_sub_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' ')).sub_catalog
    @subcat = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))

    @it_et = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' ')).int_exts

    if @main_catalog.name =="Iнтер'ер" || @main_catalog.name =="Екстер'ер"
      render "catalog/all_products_int_ext"
    end

  end

  def all_collections
    @collections = Brand.find_by_name(params[:brand]).collections
    @current_sub_catalog = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @main_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' '))
  end

  def all_products
    @door = Collection.find_by_name(params[:collection].gsub('_',' ')).doors
    @current_collection = Collection.find_by_name(params[:collection].gsub('_',' '))
    @current_sub_catalog = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @main_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' '))
    @floor = Collection.find_by_name(params[:collection].gsub('_',' ')).floors

    if @main_catalog.name =="Пiдлога"
      render "catalog/all_products_floor"
    end
  end

  def all_products_floor
  end

  def all_products_int_ext
  end

  def door
    c = Collection.find_by_name(params[:collection].gsub('_',' '))
    @door_test = Door.where(collection_id: c.id, name: params[:door].gsub('_',' ')).first
    @current_sub_catalog = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @main_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' '))
  end

  def floor

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
