class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  after_action :show_flash_message


  def show_flash_message
    if params[:flash_msg]
      flash[:notice] = params[:flash_msg]
      params.delete(:flash_msg)
    end
  end
end
