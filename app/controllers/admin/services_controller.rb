module Admin
  class ServicesController < AdminController
    before_action :set_service, only: %i[edit show update destroy]

    def index
      @services = Service.all
    end

    def new
      @service = Service.new
    end

    def edit; end

    def show; end

    def create
      @service = Service.new(service_params)
      if @service.save
        redirect_to admin_services_path
      else
        flash[:alert] = @service.errors.full_messages
        render 'new'
      end
    end

    def update
      if @service.update(service_params)
        redirect_to admin_services_path
      else
        flash[:alert] = @service.errors.full_messages
        render 'edit'
      end
    end

    def destroy
      @service.destroy
      redirect_to admin_services_path
    end

    private

    def service_params
      params.require(:service).permit(:name, :description)
    end

    def set_service
      @service = Service.find(params[:id])
    end
  end
end
