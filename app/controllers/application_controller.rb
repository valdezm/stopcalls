class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
  flash[:alert] = exception.message
  redirect_to root_url
end
private
def current_order
  Order.find(session[:order_id])
rescue ActiveRecord::RecordNotFound
  zip = current_user.testprofile2.zip_add
  order = Order.create(:user_id => current_user.id, :name => current_user.testprofile2.f_name + ' '+current_user.testprofile2.l_name, :pay_type => 'unknown', 
:address => current_user.testprofile2.line_add + '  ' + current_user.testprofile2.city_add + '  ' + current_user.testprofile2.state_add)
  session[:order_id]=order.id
  order
end
end
