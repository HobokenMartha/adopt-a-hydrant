module ApplicationHelper

  def time_friendly(time)
    time.strftime("%b %d %Y")
  end

  def static_map_image(latitude, longitude)
    "http://maps.googleapis.com/maps/api/staticmap?&zoom=13&size=700x300&maptype=roadmap
    &markers=color:red%7Clabel:S%7C#{latitude},#{longitude}&sensor=false"
  end
end
