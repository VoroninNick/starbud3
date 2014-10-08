json.array!(@about_article_images) do |about_article_image|
  json.extract! about_article_image, :id
  json.url about_article_image_url(about_article_image, format: :json)
end
