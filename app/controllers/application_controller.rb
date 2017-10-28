class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken

  rescue_from ActiveRecord::RecordNotFound, with: :not_found!

  protected

  def not_found!
    render json: { error: 'Not found' }, status: 404
  end
end
