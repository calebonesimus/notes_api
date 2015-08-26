class UsersController < ApplicationController

  def create
    if params[:api_token].nil?
      @user = User.new(email: params[:email])
      @user.api_token = SecureRandom.hex
      if @user.save
        render json: @user
      else
        render json: @user.errors
      end
    end
  end

  private

  def user_params
    params.permit(:email)
  end

end
