class ViolationsController < ApplicationController
  # GET /violations
  # GET /violations.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @violations }
    end
  end

  # GET /violations/1
  # GET /violations/1.json
  def show
    @violation = Violation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @violation }
    end
  end

  # GET /violations/new
  # GET /violations/new.json
  
  
  def new
    @violation_line = ViolationLine.new
    @violation_line.violation_logs.build
    @violation_line.build_company    
    @violation_line.company.phone_lists.build
    @violation_line.user_id=current_user.id
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @violation }
    end
  end  

  # GET /violations/1/edit
  def edit
    @violation = Violation.find(params[:id])
  end

  # POST /violations
  # POST /violations.json
  def create
    @violation_line = ViolationLine.new(params[:violation_line])
    @violation_line.user_id=current_user.id
    respond_to do |format|
      if @violation_line.save
        format.html { redirect_to @violation_line, notice: 'Violation line was successfully created.' }
        format.json { render json: @violation_line, status: :created, location: @violation_line }
      else
        format.html { render action: "new" }
        format.json { render json: @violation_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /violations/1
  # PUT /violations/1.json
  def update
    @violation = Violation.find(params[:id])

    respond_to do |format|
      if @violation.update_attributes(params[:violation])
        format.html { redirect_to @violation, notice: 'Violation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end
 def admin
    @users = User.all
  
  end
  # DELETE /violations/1
  # DELETE /violations/1.json
  def destroy
    @violation = Violation.find(params[:id])
    @violation.destroy

    respond_to do |format|
      format.html { redirect_to violations_url }
      format.json { head :ok }
    end
  end
end


