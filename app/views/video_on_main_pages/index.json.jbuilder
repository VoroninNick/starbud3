json.array!(@video_on_main_pages) do |video_on_main_page|
  json.extract! video_on_main_page, :id
  json.url video_on_main_page_url(video_on_main_page, format: :json)
end
