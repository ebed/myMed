class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :rescue_not_found

  before_action :authenticate_customer!
	protected
		def after_sign_in_path_for(resource)
		#user_path(resource)
		return customer_path(resource)
		#home_path

	end

  protected
	  def rescue_not_found
	    redirect_to home_path, notice: 'You can not access there'
	  end
end
