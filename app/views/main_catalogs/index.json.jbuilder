json.array!(@main_catalogs) do |main_catalog|
  json.extract! main_catalog, :id
  json.url main_catalog_url(main_catalog, format: :json)
end
