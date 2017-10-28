module Users
  class RegistrationsController < DeviseTokenAuth::RegistrationsController
    def create
      # dont need yet
      # names = params[:registration][:name].split('_')
      # params[:registration][:first_name] = names[0]
      # params[:registration][:last_name] = names[1]
      super
    end

    def sign_up_params
      params.require(:registration).permit(
        :email, :password,
        :password_confirmation
      )
    end
  end
end
