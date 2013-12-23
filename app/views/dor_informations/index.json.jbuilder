json.array!(@dor_informations) do |dor_information|
  json.extract! dor_information, :id
  json.url dor_information_url(dor_information, format: :json)
end
