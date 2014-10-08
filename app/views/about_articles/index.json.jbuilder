json.array!(@about_articles) do |about_article|
  json.extract! about_article, :id
  json.url about_article_url(about_article, format: :json)
end
