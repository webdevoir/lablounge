class LashConsentsController < ApplicationController
  #include Wicked::Wizard

  #steps :client, :contact, :questionnaire

  # def show
  #   case step
  #   when :client
  #     @lash_consent = LashConsent.new(status: step.to_s)
  #   when :contact, :questionnaire
  #     @lash_consent = 
  #   render_wizard
  # end

  def new
    @lash_consent = LashConsent.new
  end

  def create
    @lash_consent = LashConsent.new(lash_consent_params)
    if @lash_consent.save
      puts "success!"
      flash[:notice] = "Successfully created an about section."
      redirect_to root_path
    else
      flash[:alert] = @lash_consent.errors.full_messages
      puts @lash_consent.errors.full_messages
      render 'new'
    end
  end

  def update
  end

  private

  def lash_consent_params
    params.require(:lash_consent).permit(
      :first_name, :last_name, :email, :address1, :address2,
      :city, :state, :zip, :phone, :lash_lift_before,
      :allergies, :brows_lashes_tinted, :hair_color_allergy,
      :birthdate, :status, {natural_lashes: []}, {medical_history: []},
      :consent
    )
  end
end
