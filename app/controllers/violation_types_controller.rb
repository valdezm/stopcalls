class ViolationTypesController < ApplicationController
  # GET /violation_types
  # GET /violation_types.json
  def index
    @violation_types = ViolationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @violation_types }
    end
  end

  # GET /violation_types/1
  # GET /violation_types/1.json
  def show
    @violation_type = ViolationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @violation_type }
    end
  end

  # GET /violation_types/new
  # GET /violation_types/new.json
  def new
    @violation_type = ViolationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @violation_type }
    end
  end

  # GET /violation_types/1/edit
  def edit
    @violation_type = ViolationType.find(params[:id])
  end

  # POST /violation_types
  # POST /violation_types.json
  def create
    @violation_type = ViolationType.new(params[:violation_type])

    respond_to do |format|
      if @violation_type.save
        format.html { redirect_to @violation_type, notice: 'Violation type was successfully created.' }
        format.json { render json: @violation_type, status: :created, location: @violation_type }
      else
        format.html { render action: "new" }
        format.json { render json: @violation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /violation_types/1
  # PUT /violation_types/1.json
  def update
    @violation_type = ViolationType.find(params[:id])

    respond_to do |format|
      if @violation_type.update_attributes(params[:violation_type])
        format.html { redirect_to @violation_type, notice: 'Violation type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @violation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violation_types/1
  # DELETE /violation_types/1.json
  def destroy
    @violation_type = ViolationType.find(params[:id])
    @violation_type.destroy

    respond_to do |format|
      format.html { redirect_to violation_types_url }
      format.json { head :ok }
    end
  end
end
