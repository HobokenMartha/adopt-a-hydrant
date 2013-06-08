class PagesController < ApplicationController

  layout 'pages'

  def index
    @markers = Hydrant.where("latitude IS NOT ?", nil)
    @center = Hydrant.where("latitude IS NOT ?", nil).first
  end
end
