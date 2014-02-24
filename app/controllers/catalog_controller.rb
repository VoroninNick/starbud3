class CatalogController < ApplicationController

  def all_brands
    @brand = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog]).brands
    @current_sub_catalog = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])
    @main_catalog = MainCatalog.find_by_main_catalogs_url(params[:main_catalog])
  end

  def all_collections

    @current_sub_catalog = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])
    @current_brand = Brand.find_by_brand_url(params[:brand])

    @main_catalog = MainCatalog.find_by_main_catalogs_url(params[:main_catalog])
    @subcat = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])

    @it_et = Brand.find_by_brand_url(params[:brand]).int_exts
    @ext = Brand.find_by_brand_url(params[:brand]).exteriors
    @rel_prod = Brand.find_by_brand_url(params[:brand]).related_products

    if @main_catalog.main_catalogs_url =="inter-er"
      render "catalog/all_products_int_ext"
    elsif @main_catalog.main_catalogs_url =="ekster-er"
      render "catalog/all_products_exterior"
    elsif @main_catalog.main_catalogs_url =="suputni-tovari"
      render "catalog/all_products_related_products"
    end
    @collections = Brand.find_by_brand_url(params[:brand]).collections
  end

  def all_products
    #@door = Collection.find_by_collection_url(params[:collection]).doors

    query = "select d.id from doors d, collections c, brands b, sub_catalogs s where d.collection_id == c.id and c.brand_id == b.id and b.sub_catalog_id == s.id and c.collection_url == '#{params[:collection]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @door = []
    result.each do |row|
      @door.append( Door.find( row['id'] ) )
    end

    @current_collection = Collection.find_by_collection_url(params[:collection])
    @current_sub_catalog = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])
    @main_catalog = MainCatalog.find_by_main_catalogs_url(params[:main_catalog])

    @floor = Collection.find_by_collection_url(params[:collection]).floors
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
    c = Collection.find_by_collection_url(params[:collection])

    @door_test = Door.where(collection_id: c.id, door_url: params[:door]).first

    @current_sub_catalog = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])
    @main_catalog = MainCatalog.find_by_main_catalogs_url(params[:main_catalog])
  end

  def floor
  end
  def catalog_layout
  end

  def item
  end
  def show_item
  end

end
