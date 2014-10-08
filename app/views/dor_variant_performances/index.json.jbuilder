json.array!(@dor_variant_performances) do |dor_variant_performance|
  json.extract! dor_variant_performance, :id
  json.url dor_variant_performance_url(dor_variant_performance, format: :json)
end
