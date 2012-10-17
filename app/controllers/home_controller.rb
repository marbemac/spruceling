class HomeController < ApplicationController
  layout :determine_layout

  def index
    if signed_in?
      @boxes = Box.by_filter(params.slice(:gender, :size)).active
      render "home"
    else
      render "splash"
    end
  end

  private

  def determine_layout
    signed_in? ? 'application' : 'splash'
  end
end
