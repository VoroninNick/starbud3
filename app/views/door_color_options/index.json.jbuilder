json.array!(@door_color_options) do |door_color_option|
  json.extract! door_color_option, :id
  json.url door_color_option_url(door_color_option, format: :json)
end
