class SignUpController < ApplicationController
  def new
    @user=User.new
    @user.build_testprofile2
  end
  def create
    @user=User.new(params[:user])
    @user.build_testprofile2
    @user.testprofile2.update_attributes params[:user][:testprofile2_attributes]

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'You have signed up successfully. However, we could not sign you in because your account is unconfirmed.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  def new_form
    @user=User.new(params[:user])
    @user.build_testprofile2
    @user.build_intake_form
    @user.intake_form.build_additional_service
    @user.intake_form.build_intake_question
  end
  def create_through_form
    @user=User.new(params[:user])
    @user.build_testprofile2
    @user.build_intake_form
    @user.intake_form.build_additional_service
    @user.intake_form.build_intake_question
    @user.testprofile2.update_attributes params[:user][:testprofile2_attributes]
    @user.intake_form.update_attributes params[:user][:intake_form_attributes]
    @user.intake_form.additional_service.update_attributes params[:user][:intake_form_attributes][:additional_service_attributes]
    @user.intake_form.intake_question.update_attributes params[:user][:intake_form_attributes][:intake_question_attributes]
    if params[:user][:intake_form_attributes][:sued] == "true"
      @user.intake_form.garnashed="false"
    else
      @user.intake_form.garnashed="true"
    end
        if params[:user][:intake_form_attributes][:law_suit_inv_real] == "true"
      @user.intake_form.law_suit_inv_cc="false"
    else
      @user.intake_form.law_suit_inv_cc="true"
    end
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'You have signed up successfully. However, we could not sign you in because your account is unconfirmed.' }
      else
        format.html { render action: "new_form" }
      end
    end
  end
  

end
