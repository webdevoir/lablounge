module Admin
  class AdminController < ApplicationController
    before_action :authenticate_user!

    def dashboard
    end
  end
end
