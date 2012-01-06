class PhoneListsController < ApplicationController
  # GET /phone_lists
  # GET /phone_lists.json
  def index
    @phone_lists = PhoneList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phone_lists }
    end
  end

  # GET /phone_lists/1
  # GET /phone_lists/1.json
  def show
    @phone_list = PhoneList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phone_list }
    end
  end

def company_add
  @phone_list = PhoneList.new
  @company = Company.find(params[:id])
  @phone_list.company_id=@company.id
    
end
  # GET /phone_lists/new
  # GET /phone_lists/new.json
  def new
    @phone_list = PhoneList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @phone_list }
    end
  end

  # GET /phone_lists/1/edit
  def edit
    @phone_list = PhoneList.find(params[:id])
  end

  # POST /phone_lists
  # POST /phone_lists.json
  def create
    @phone_list = PhoneList.new(params[:phone_list])

    respond_to do |format|
      if @phone_list.save
        format.html { redirect_to @phone_list, notice: 'Phone list was successfully created.' }
        format.json { render json: @phone_list, status: :created, location: @phone_list }
      else
        format.html { render action: "new" }
        format.json { render json: @phone_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /phone_lists/1
  # PUT /phone_lists/1.json
  def update
    @phone_list = PhoneList.find(params[:id])

    respond_to do |format|
      if @phone_list.update_attributes(params[:phone_list])
        format.html { redirect_to @phone_list, notice: 'Phone list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @phone_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_lists/1
  # DELETE /phone_lists/1.json
  def destroy
    @phone_list = PhoneList.find(params[:id])
    @phone_list.destroy

    respond_to do |format|
      format.html { redirect_to phone_lists_url }
      format.json { head :ok }
    end
  end
end
