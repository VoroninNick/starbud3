json.array!(@dor_variants) do |dor_variant|
  json.extract! dor_variant, :id
  json.url dor_variant_url(dor_variant, format: :json)
end
