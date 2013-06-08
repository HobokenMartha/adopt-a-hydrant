module ApplicationHelper

  def time_friendly(time)
    time.strftime("%b %d %Y")
  end
end
