json.array!(@door_variants_fulfillment_options) do |door_variants_fulfillment_option|
  json.extract! door_variants_fulfillment_option, :id
  json.url door_variants_fulfillment_option_url(door_variants_fulfillment_option, format: :json)
end
