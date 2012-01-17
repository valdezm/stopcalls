class IntakeFormsController < ApplicationController
  # GET /intake_forms
  # GET /intake_forms.json
  def index
    @intake_forms = IntakeForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intake_forms }
    end
  end

  # GET /intake_forms/1
  # GET /intake_forms/1.json
  def show
    @intake_form = IntakeForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intake_form }
    end
  end

  # GET /intake_forms/new
  # GET /intake_forms/new.json
  def new
    @intake_form = IntakeForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intake_form }
    end
  end

  # GET /intake_forms/1/edit
  def edit
    @intake_form = IntakeForm.find(params[:id])
  end

  # POST /intake_forms
  # POST /intake_forms.json
  def create
    @intake_form = IntakeForm.new(params[:intake_form])

    respond_to do |format|
      if @intake_form.save
        format.html { redirect_to @intake_form, notice: 'Intake form was successfully created.' }
        format.json { render json: @intake_form, status: :created, location: @intake_form }
      else
        format.html { render action: "new" }
        format.json { render json: @intake_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intake_forms/1
  # PUT /intake_forms/1.json
  def update
    @intake_form = IntakeForm.find(params[:id])

    respond_to do |format|
      if @intake_form.update_attributes(params[:intake_form])
        format.html { redirect_to @intake_form, notice: 'Intake form was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @intake_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intake_forms/1
  # DELETE /intake_forms/1.json
  def destroy
    @intake_form = IntakeForm.find(params[:id])
    @intake_form.destroy

    respond_to do |format|
      format.html { redirect_to intake_forms_url }
      format.json { head :ok }
    end
  end
end
