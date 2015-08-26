class ApplicationController < ActionController::API
  include ::ActionController::Serialization

  before_action :set_user

  def set_user
    if params[:api_token]
      @user = User.find_by_api_token(params[:api_token])
    end
  end
  
end
