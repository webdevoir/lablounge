module Admin
  class ServiceItemsController < AdminController
    def edit
      @service = Service.find(params[:service_id])
      @service_item = ServiceItem.find(params[:id])
    end

    def create
      @service = Service.find(params[:service_id])
      @service_item = @service.service_items.new(service_item_params)
      if @service_item.save
        redirect_to admin_service_path(@service)
      else
        puts @service_item.errors.full_messages
        flash[:alert] = @service_item.errors.full_messages
        redirect_to admin_service_path(@service)
      end
    end

    def update
      @service = Service.find(params[:service_id])
      @service_item = ServiceItem.find(params[:id])
      if @service_item.update(service_item_params)
        redirect_to admin_service_path(@service)
      else
        flash[:alert] = @service_item.errors.full_messages
        render 'edit'
      end
    end

    def destroy
      @service = Service.find(params[:service_id])
      @service_item = @service.service_items.find(params[:id])
      @service_item.destroy
      redirect_to admin_service_path(@service)
    end
   
    private

    def service_item_params
      params.require(:service_item).permit(:name, :price, :description)
    end
  end
end
