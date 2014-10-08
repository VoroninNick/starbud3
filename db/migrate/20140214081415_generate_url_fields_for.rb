class GenerateUrlFieldsFor < ActiveRecord::Migration
  def up
    MainCatalog.all.each do |item|
      item.generate_main_catalogs_url
      item.save
    end
    SubCatalog.all.each do |item|
      item.generate_sub_catalog_url
      item.save
    end
    Brand.all.each do |item|
      item.generate_brand_url
      item.save
    end
    Collection.all.each do |item|
      item.generate_collection_url
      item.save
    end
    Door.all.each do |item|
      item.generate_door_url
      item.save
    end
    IntExt.all.each do |item|
      item.generate_interior_url
      item.save
    end
    Exterior.all.each do |item|
      item.generate_exterior_url
      item.save
    end
    RelatedProduct.all.each do |item|
      item.generate_related_url
      item.save
    end
    Promotion.all.each do |item|
      item.generate_promotion_url
      item.save
    end
    Publication.all.each do |item|
      item.generate_url
      item.save
    end
    InterestNews.all.each do |item|
      item.generate_url
      item.save
    end
  end
end
