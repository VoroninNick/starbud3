json.array!(@dors) do |dor|
  json.extract! dor, :id
  json.url dor_url(dor, format: :json)
end
