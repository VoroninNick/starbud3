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

    # @rel_prod = Brand.find_by_brand_url(params[:brand]).related_products

    query = "select r.id from related_products r, brands b, sub_catalogs s where r.brand_id == b.id and b.sub_catalog_id == s.id and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @rel_prod = []
    result.each do |row|
      @rel_prod.append( RelatedProduct.find( row['id'] ) )
    end

    if @main_catalog.main_catalogs_url =="inter-er"
      render "catalog/all_products_int_ext"
    elsif @main_catalog.main_catalogs_url =="ekster-er"
      render "catalog/all_products_exterior"
    elsif @main_catalog.main_catalogs_url =="suputni-tovari"
      render "catalog/all_products_related_products"
    end

    # @collections = Brand.find_by_brand_url(params[:brand]).collections
    query = "select c.id from collections c, brands b, sub_catalogs s where c.brand_id == b.id and b.sub_catalog_id == s.id and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @collections = []
    result.each do |row|
      @collections.append( Collection.find( row['id'] ) )
    end
  end

  def all_products
    #@door = Collection.find_by_collection_url(params[:collection]).doors

    query = "select d.id from doors d, collections c, brands b, sub_catalogs s where d.collection_id == c.id and c.brand_id == b.id and b.sub_catalog_id == s.id and c.collection_url == '#{params[:collection]}' and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @door = []
    result.each do |row|
      @door.append( Door.find( row['id'] ) )
    end
    #
    # c = @door.collection
    b = Brand.find_by_brand_url(params[:brand])
    @current_collection = Collection.where(brand_id: b.id, collection_url: params[:collection]).first

    # query = "select c.id from collections c, brands b, sub_catalogs s where c.brand_id == b.id and b.sub_catalog_id == s.id and c.collection_url == '#{params[:collection]}' and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    # result = ActiveRecord::Base.connection.execute( query )
    # @current_collection = []
    # result.each do |row|
    #   @current_collection.append( Collection.find( row['id'] ) )
    # end

    @current_sub_catalog = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])
    @main_catalog = MainCatalog.find_by_main_catalogs_url(params[:main_catalog])


    query = "select f.id from floors f, collections c, brands b, sub_catalogs s where f.collection_id == c.id and c.brand_id == b.id and b.sub_catalog_id == s.id and c.collection_url == '#{params[:collection]}' and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @floor = []
    result.each do |row|
      @floor.append( Floor.find( row['id'] ) )
    end

    # @floor = Collection.find_by_collection_url(params[:collection]).floors
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

    # c = Collection.find_by_collection_url(params[:collection])
    # #
    # @door_test = Door.where(collection_id: c.id, door_url: params[:door]).first
    # render inline: @door_test.inspect

    query = "select d.id from doors d, collections c, brands b, sub_catalogs s where d.collection_id == c.id and c.brand_id == b.id and b.sub_catalog_id == s.id and d.door_url == '#{params[:door]}' and c.collection_url == '#{params[:collection]}' and b.brand_url == '#{params[:brand]}' "
    result = ActiveRecord::Base.connection.execute( query )
    @door_test = []
    result.each do |row|
      @door_test.append( Door.find( row['id'] ) )
    end
    @door_test = @door_test.first
    # render inline: @door_test[0].seo_dynamic.inspect

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

  def designer

  end
  def get_coll
    names =Collection.find_names_by_brand_url(params[:brand])

    s = names.join(',')
    render(inline: s)
  end
end
