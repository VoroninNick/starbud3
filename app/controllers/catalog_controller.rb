class CatalogController < ApplicationController

  def all_brands
    @brand = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' ')).brands
    @current_sub_catalog = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @main_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' '))


  end

  def all_collections
    @collections = Brand.find_by_name(params[:brand].gsub('_',' ')).collections
    @current_sub_catalog = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @main_catalog = MainCatalog.find_by_name(params[:main_catalog].gsub('_',' '))

    @subcat = SubCatalog.find_by_name(params[:sub_catalog].gsub('_',' '))
    @it_et = Brand.find_by_name(params[:brand].gsub('_',' ')).int_exts
    @ext = Brand.find_by_name(params[:brand].gsub('_',' ')).exteriors


    if @main_catalog.name =="Iнтер'ер"
      render "catalog/all_products_int_ext"
    elsif @main_catalog.name =="Екстер'ер"
      render "catalog/all_products_exterior"
    end

    @related = Brand.find_by_name(params[:brand].gsub('_',' ')).related_products
    if @main_catalog.name =="Супутнi товари"
      render "catalog/all_products_related_products"
    end
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
  def all_products_exterior
  end
  def all_products_related_products
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
