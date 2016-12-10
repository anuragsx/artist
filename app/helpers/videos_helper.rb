module VideosHelper
  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, width: "100%", height: "400px", src: "//www.youtube.com/embed/#{youtube_id}")
  end
end
