class HomeController < ApplicationController
  def homepage
    @about = About.last
    @images = Image.all
  end
end
