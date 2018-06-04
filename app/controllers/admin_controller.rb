class AdminController < ApplicationController
  before_action :authenticate_admin!

  def dashboard
    @about = About.last
  end

  def about_edit
    @about = About.find(params[:id])
  end

  def about_update
    @about = About.find(params[:id])
    if @about.update(about_params)
      flash[:notice] = 'Successfully update About section.'
      redirect_to admin_path
    else
      render 'about_edit'
    end
  end

  private

  def about_params
    params.require(:about).permit(:about_heading, :about_description)
  end
end
