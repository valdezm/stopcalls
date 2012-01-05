class ViolationLogsController < ApplicationController
  # GET /violation_logs
  # GET /violation_logs.json
  def index
    @violation_logs = ViolationLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @violation_logs }
    end
  end
  def add
    @violation_log = ViolationLog.new
  end
  # GET /violation_logs/1
  # GET /violation_logs/1.json
  def show
    @violation_log = ViolationLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @violation_log }
    end
  end

  # GET /violation_logs/new
  # GET /violation_logs/new.json
  def new
    @violation_log = ViolationLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @violation_log }
    end
  end

  # GET /violation_logs/1/edit
  def edit
    @violation_log = ViolationLog.find(params[:id])
  end

  # POST /violation_logs
  # POST /violation_logs.json
  def create
    @violation_log = ViolationLog.new(params[:violation_log])

    respond_to do |format|
      if @violation_log.save
        format.html { redirect_to @violation_log, notice: 'Violation log was successfully created.' }
        format.json { render json: @violation_log, status: :created, location: @violation_log }
      else
        format.html { render action: "new" }
        format.json { render json: @violation_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /violation_logs/1
  # PUT /violation_logs/1.json
  def update
    @violation_log = ViolationLog.find(params[:id])

    respond_to do |format|
      if @violation_log.update_attributes(params[:violation_log])
        format.html { redirect_to @violation_log, notice: 'Violation log was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @violation_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violation_logs/1
  # DELETE /violation_logs/1.json
  def destroy
    @violation_log = ViolationLog.find(params[:id])
    @violation_log.destroy

    respond_to do |format|
      format.html { redirect_to violation_logs_url }
      format.json { head :ok }
    end
  end
end
