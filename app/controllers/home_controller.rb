class HomeController < ApplicationController
  def homepage
    @about = About.last
    @images = Image.all
    @services = Service.all
  end
end
