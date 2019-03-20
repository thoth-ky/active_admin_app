class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    access_denied(exception)
  end

  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end
end
