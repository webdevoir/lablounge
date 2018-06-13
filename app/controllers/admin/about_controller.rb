module Admin
  class AboutController < AdminController
    before_action :check_if_about_section_exists, only: [:new]

    def index
      @abouts = About.all
    end

    def new
      @about = About.new
    end

    def edit
      @about = About.find(params[:id])
    end

    def create
      @about = About.new(about_params)
      if @about.save
        flash[:notice] = "Successfully created an about section."
        redirect_to admin_about_path
      else
        flash[:alert] = @about.errors.full_messages
        render 'new'
      end
    end

    def update
      @about = About.find(params[:id])
      if @about.update(about_params)
        render json: {status: "ok"}, status: :ok
      else
        render json: {status: 'error'}, status: :unprocessable_entity
      end
    end

    private

    def about_params
      params.require(:about).permit(:about_heading, :about_description)
    end

    def check_if_about_section_exists
      if About.any?
        flash[:alert] = "Cannot add a new about section"
        redirect_to admin_about_path
      end
    end
  end
end
