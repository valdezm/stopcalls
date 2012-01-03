class ViolationsController < ApplicationController
  before_filter :authenticate_user!
  def index
  end
  def admin
    @users = User.all
  
  end

end
