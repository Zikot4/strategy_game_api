class Web::HomeController < Web::BaseController
  def index
    redirect_to rails_admin_path
  end
end
