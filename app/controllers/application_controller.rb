class ApplicationController < ActionController::Base
	  # Prevent CSRF attacks by raising an exception.
	  # For APIs, you may want to use :null_session instead.
	  respond_to :json, :html
	  protect_from_forgery with: :exception
	  protect_from_forgery except: :sign_in
	  rescue_from ActiveRecord::RecordNotFound, :with => :rescue_not_found
	##  acts_as_token_authentication_handler_for Customer
	  
	##  before_filter :authenticate_customer_from_token!
	##  before_filter :authenticate_customer!
	 # before_filter :authenticate_customer!, :except => [:create, :new, :show]


before_filter :cors_preflight_check
after_filter :cors_set_access_control_headers

# For all responses in this controller, return the CORS access control headers.

def cors_set_access_control_headers
  headers['Access-Control-Allow-Origin'] = '*'
  headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
  headers['Access-Control-Max-Age'] = "1728000"
end

# If this is a preflight OPTIONS request, then short-circuit the
# request, return only the necessary headers and return an empty
# text/plain.

def cors_preflight_check
  if request.method == :options
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
    headers['Access-Control-Max-Age'] = '1728000'
    render :text => '', :content_type => 'text/plain'
  end
end







	protected
		def after_sign_in_path_for(resource)
		#user_path(resource)
		return customer_path(resource)
		#home_path

	end
 

	def request_http_token_authentication(realm = "Application")  
	  self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
	  self.__send__ :render, :json => { :error => "HTTP Token: Access denied. You did not provide an valid API key." }.to_json, :status => :unauthorized
	end




    protected
	  def rescue_not_found
	    redirect_to home_path, notice: 'You can not access there'
	  end

    private
		def authenticate_customer_from_token!
			 customer_email = params[:customer_email].presence
			 customer = customer_email && Customer.find_by_email(customer_email)
			 if customer && Devise.secure_compare(customer.authentication_token, params[:customer_token])
				sign_in customer, store: false
		     end
	
		end


end	
