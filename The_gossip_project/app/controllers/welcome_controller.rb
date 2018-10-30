class WelcomeController < ApplicationController
  def index
    @user_name = params[:first_name]
  end
end
