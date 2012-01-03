class Testprofile2sController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /testprofile2s
  # GET /testprofile2s.json
  
  def index
    respond_to do |format|
      if current_user.role? :Admin 
        @testprofile2s = Testprofile2.all 
        format.html 
        format.json { render json: @testprofile2, status: :created, location: @testprofile2 }
      else
        format.html { redirect_to root_path, notice: 'Not Authorized' }
        format.json { render json: @testprofile2, status: :created, location: @testprofile2 }
      end
    end
    
  end
  # GET /testprofile2s/1
  # GET /testprofile2s/1.json
  def show
    @testprofile2 = Testprofile2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testprofile2 }
    end
  end

  # GET /testprofile2s/new
  # GET /testprofile2s/new.json
  def new
    @testprofile2 = Testprofile2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testprofile2 }
    end
  end

  # GET /testprofile2s/1/edit
  def edit
    @testprofile2 = Testprofile2.find(params[:id])
  end

  # POST /testprofile2s
  # POST /testprofile2s.json
  def create
    @testprofile2 = Testprofile2.new(params[:testprofile2])

    respond_to do |format|
      if @testprofile2.save
          current_user.testprofile2 = @testprofile2
        format.html { redirect_to root_path, notice: 'Testprofile2 was successfully created.' }
        format.json { render json: @testprofile2, status: :created, location: @testprofile2 }
      else
        format.html { render action: "new" }
        format.json { render json: @testprofile2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testprofile2s/1
  # PUT /testprofile2s/1.json
  def update
    @testprofile2 = Testprofile2.find(params[:id])

    respond_to do |format|
      if @testprofile2.update_attributes(params[:testprofile2])
        format.html { redirect_to root_path, notice: 'Testprofile2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @testprofile2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testprofile2s/1
  # DELETE /testprofile2s/1.json
  def destroy
    @testprofile2 = Testprofile2.find(params[:id])
    @testprofile2.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :ok }
    end
  end
end
