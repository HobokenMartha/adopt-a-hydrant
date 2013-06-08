class PagesController < ApplicationController
  def index
    @markers = Hydrant.where("latitude IS NOT ?", nil)
    @center = Hydrant.where("latitude IS NOT ?", nil).first
  end
end
