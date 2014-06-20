class Devise::SessionsController < DeviseController
    def create
        build_resource
        resource = Customer.find_for_database_authentication(:email => params[:email])
        return invalid_login_attempt unless resource
            
        if resource.valid_password?(params[:password])
            resource.ensure_authentication_token!  #make sure the customer has a token generated
            render :json => { :authentication_token => resource.authentication_token, :customer_id => resource.id }, :status => :created
        return
        end
    end

    def destroy
        # expire auth token
        @customer=Customer.where(:authentication_token=>params[:auth_token]).first
        @customer.reset_authentication_token!
        render :json => { :message => ["Session deleted."] },  :success => true, :status => :ok
    end
        
    def invalid_login_attempt
        warden.custom_failure!
        render :json => { :errors => ["Invalid email or password."] },  :success => false, :status => :unauthorized
    end
end