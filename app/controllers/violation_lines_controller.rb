class ViolationLinesController < ApplicationController
  # GET /violation_lines
  # GET /violation_lines.json
  def index
    @violation_lines = ViolationLine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @violation_lines }
    end
  end

  # GET /violation_lines/1
  # GET /violation_lines/1.json
  def show
    @violation_line = ViolationLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @violation_line }
    end
  end

  # GET /violation_lines/new
  # GET /violation_lines/new.json
  def new
    @violation_line = ViolationLine.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @violation_line }
    end
  end

  # GET /violation_lines/1/edit
  def edit
    @violation_line = ViolationLine.find(params[:id])
  end

  # POST /violation_lines
  # POST /violation_lines.json
  def create
    @violation_line = ViolationLine.new(params[:violation_line])

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

  # PUT /violation_lines/1
  # PUT /violation_lines/1.json
  def update
    @violation_line = ViolationLine.find(params[:id])

    respond_to do |format|
      if @violation_line.update_attributes(params[:violation_line])
        format.html { redirect_to @violation_line, notice: 'Violation line was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @violation_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violation_lines/1
  # DELETE /violation_lines/1.json
  def destroy
    @violation_line = ViolationLine.find(params[:id])
    @violation_line.destroy

    respond_to do |format|
      format.html { redirect_to violation_lines_url }
      format.json { head :ok }
    end
  end
end
