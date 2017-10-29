class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :check_token

  protected

  def check_token
    api_key = request.headers['Authorization']
    @user = User.by_auth_token(api_key).first if api_key

    unless @user
      head :unauthorized
      return false
    end
  end
end
