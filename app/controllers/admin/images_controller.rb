module Admin
  class ImagesController < ApplicationController
    before_action :authenticate_user!

    before_action :set_image, only: [:destroy]

    def index
      @images = Image.all
      @image = Image.new
      @about = About.last
    end

    def create
      @image = Image.new(image_params)
      if @image.save
        flash[:notice] = "Successfully uploaded image."
        redirect_to admin_images_path
      else
        flash[:alert] = @image.errors.full_messages
        redirect_to admin_images_path
      end
    end

    def destroy
      destroy_image = remove_image_at_index(params[:index].to_i)
      if destroy_image
        flash[:notice] = "delete successful"
        redirect_to admin_images_path
      else
        flash[:alert] = "sorry can't delete the photo"
        redirect_to admin_images_path
      end
    end

    private

    def image_params
      params.require(:image).permit({image: []})
    end

    def set_image
      @image = Image.find(params[:id])
    end

    # Each image object can save an array of images
    # This method removes an image from the array field based on index
    def remove_image_at_index(index)
      image_array = @image.image
      if index == 0 && @image.image.size == 1
        @image.destroy
      else
        deleted_image = image_array.delete_at(index)
        deleted_image.try(:remove!)
        @image.image = image_array
        @image.save!
      end
    end
  end
end

