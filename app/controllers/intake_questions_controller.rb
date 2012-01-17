class IntakeQuestionsController < ApplicationController
  # GET /intake_questions
  # GET /intake_questions.json
  def index
    @intake_questions = IntakeQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intake_questions }
    end
  end

  # GET /intake_questions/1
  # GET /intake_questions/1.json
  def show
    @intake_question = IntakeQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intake_question }
    end
  end

  # GET /intake_questions/new
  # GET /intake_questions/new.json
  def new
    @intake_question = IntakeQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intake_question }
    end
  end

  # GET /intake_questions/1/edit
  def edit
    @intake_question = IntakeQuestion.find(params[:id])
  end

  # POST /intake_questions
  # POST /intake_questions.json
  def create
    @intake_question = IntakeQuestion.new(params[:intake_question])

    respond_to do |format|
      if @intake_question.save
        format.html { redirect_to @intake_question, notice: 'Intake question was successfully created.' }
        format.json { render json: @intake_question, status: :created, location: @intake_question }
      else
        format.html { render action: "new" }
        format.json { render json: @intake_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intake_questions/1
  # PUT /intake_questions/1.json
  def update
    @intake_question = IntakeQuestion.find(params[:id])

    respond_to do |format|
      if @intake_question.update_attributes(params[:intake_question])
        format.html { redirect_to @intake_question, notice: 'Intake question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @intake_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intake_questions/1
  # DELETE /intake_questions/1.json
  def destroy
    @intake_question = IntakeQuestion.find(params[:id])
    @intake_question.destroy

    respond_to do |format|
      format.html { redirect_to intake_questions_url }
      format.json { head :ok }
    end
  end
end
