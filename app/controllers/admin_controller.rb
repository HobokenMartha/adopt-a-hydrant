class AdminController < ApplicationController

  layout 'admin'

  def index
    @hydrants = Hydrant.where("latitude IS NOT ?", nil)
  end
end
