class HomeController < ApplicationController
  def index
    @products=Product.all
     unless user_signed_in?
      redirect_to sign_up_new_form_url and return
    end

  end

end
