json.array!(@variants_colors) do |variants_color|
  json.extract! variants_color, :id
  json.url variants_color_url(variants_color, format: :json)
end
