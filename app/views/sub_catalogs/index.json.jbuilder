json.array!(@sub_catalogs) do |sub_catalog|
  json.extract! sub_catalog, :id
  json.url sub_catalog_url(sub_catalog, format: :json)
end
