json.array!(@useful_videos) do |useful_video|
  json.extract! useful_video, :id
  json.url useful_video_url(useful_video, format: :json)
end
