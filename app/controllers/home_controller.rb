class HomeController < ApplicationController
  def homepage
    @about = About.last
  end
end
