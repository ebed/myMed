class StaticPagesController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def home
  	if customer_signed_in?
  		redirect_to  new_customer_session_path
  	else
  		redirect_to customers_path
  	end
  end
end
