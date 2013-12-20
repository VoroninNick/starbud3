json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :image, :short_description, :description, :url
  json.url publication_url(publication, format: :json)
end
