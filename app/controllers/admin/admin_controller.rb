module Admin
  class AdminController < ApplicationController
    before_action :authenticate_user!

    def dashboard
      @user = current_user
    end

    def update_admin_account
      @user = current_user
      if @user.update(user_params)
        flash[:notice] = "Account updated successfully."
        redirect_to admin_dashboard_path
      else
        flash[:alert] = @user.errors.full_messages
        redirect_to admin_dashboard_path
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :username, :password)
    end
  end
end
