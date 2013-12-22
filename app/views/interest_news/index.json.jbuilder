json.array!(@interest_news) do |interest_news|
  json.extract! interest_news, :id
  json.url interest_news_url(interest_news, format: :json)
end
