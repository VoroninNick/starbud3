class CatalogController < ApplicationController
  #layout 'layout-catalog'
  def all_brands
    @main_catalog = MainCatalog.all()
    @brand = Brand.order('updated_at desc')
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
