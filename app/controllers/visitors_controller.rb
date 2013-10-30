class VisitorsController < ApplicationController
  def new
    @owner = Owner.new
    render 'visitors/new' # This is an explicit call to a hidden method
  end
end