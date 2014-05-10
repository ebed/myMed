class StaticPagesController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def home
  	if customer_signed_in?
  		redirect_to  new_customer_session_path, notice: :notice
  	else
  		redirect_to customers_path, notice: :notice
  	end	
  end
end
