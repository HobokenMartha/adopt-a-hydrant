class PagesController < ApplicationController

  layout 'pages'

  def index
  end

  def map
    @markers = Hydrant.where("latitude IS NOT ?", nil)
    @center = Hydrant.where("latitude IS NOT ?", nil).first
  end
end
