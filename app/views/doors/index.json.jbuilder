json.array!(@doors) do |door|
  json.extract! door, :id
  json.url door_url(door, format: :json)
end
