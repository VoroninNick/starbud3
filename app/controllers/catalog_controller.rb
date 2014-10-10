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

    query = "select d.id from doors d, collections c, brands b, sub_catalogs s where d.collection_id == c.id and c.brand_id == b.id and b.sub_catalog_id == s.id and c.collection_url == '#{params[:collection]}' and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @door = []
    result.each do |row|
      @door.append( Door.find( row['id'] ) )
    end
    b = Brand.find_by_brand_url(params[:brand])
    @current_collection = Collection.where(brand_id: b.id, collection_url: params[:collection]).first


    @current_sub_catalog = SubCatalog.find_by_sub_catalog_url(params[:sub_catalog])
    @main_catalog = MainCatalog.find_by_main_catalogs_url(params[:main_catalog])


    query = "select f.id from floors f, collections c, brands b, sub_catalogs s where f.collection_id == c.id and c.brand_id == b.id and b.sub_catalog_id == s.id and c.collection_url == '#{params[:collection]}' and b.brand_url == '#{params[:brand]}' and s.sub_catalog_url == '#{params[:sub_catalog]}'"
    result = ActiveRecord::Base.connection.execute( query )
    @floor = []
    result.each do |row|
      @floor.append( Floor.find( row['id'] ) )
    end

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
    @render_interior = RenderInterior.order("updated_at asc")

    @floor = DDoorBrand.order("updated_at asc")
    @plinth = DPlinthBrand.order("updated_at asc")

  end

  def update_sub_cat
    if params[:id].present?
      @sub_categories = DDoorCollection.find_all_by_d_door_brand_id(params[:id])
    else
      @sub_categories = []
    end
    respond_to do |format|
      format.js
    end
  end





  def get_coll
    names =Collection.find_names_by_brand_url(params[:brand])

    s = names.join(',')
    render(inline: s)
  end
  def get_coll_floor
    names =DDoorCollection.find_names_by_brand_self(params[:brand])

    s = names.join(',')
    render(inline: s)
  end
  def get_coll_plinth
    names =DPlinthCollection.find_names_by_brand_self(params[:brand])

    s = names.join(',')
    render(inline: s)
  end

  def get_doors
    name = params[:collection]
    sql = "select d.* from collections c, doors d where c.id = d.collection_id and c.name = '#{name}'"
    doors =Door.find_by_sql(sql)
    @door_images = []
    doors.each do |d|
      d.door_variants_fulfillment_options.each do |dv|
        dv.door_color_options.each do |dc|
          @door_images.push dc
        end
      end
    end
    render template: 'constructor/get_doors.xml'
  end
  def get_floor
    name = params[:collection]
    sql = "select p.* from d_door_collections c, d_doors p where c.id = p.d_door_collection_id and c.name = '#{name}'"
    doors =DDoor.find_by_sql(sql)
    @floor_images = []
    doors.each do |d|
      d.d_product_images.each do |di|
        @floor_images.push di
      end
    end
    render template: 'constructor/get_floors.xml'
  end
  def get_plinth
    name = params[:collection]
    sql = "select p.* from d_plinth_collections c, d_plinths p where c.id = p.d_plinth_collection_id and c.name = '#{name}'"
    plinth =DPlinth.find_by_sql(sql)
    @plinth_images = []
    plinth.each do |d|
      d.d_product_images.each do |di|
        @plinth_images.push di
      end
    end
    render template: 'constructor/get_plinths.xml.erb'
  end



  def get_laminate
    laminates = Laminate.where(render_interior_id: (params[:id]))
    @images = []
    laminates.each do |l|
      l.laminate_images.each do |img|
        @images.push img
      end
    end
    render template: 'constructor/get_laminate.xml'
  end

  def get_wall
    walls = ColorWall.where(render_interior_id: (params[:id]))
    @images = []
    walls.each do |w|
      w.color_wall_images.each do |img|
        @images.push img
      end
    end
    render template: 'constructor/get_wall.xml'
  end

  def get_baseboard
    baseboards = ColorBaseboard.where(render_interior_id: (params[:id]))
    @images = []
    baseboards.each do |b|
      b.color_baseboard_images.each do |img|
        @images.push img
      end
    end
    render template: 'constructor/get_baseboard.xml'
  end

end
