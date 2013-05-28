class AttendantsController < ApplicationController
  # GET /attendants
  # GET /attendants.json
  def index
    @attendants = Attendant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendants }
    end
  end

  # GET /attendants/1
  # GET /attendants/1.json
  def show
    @attendant = Attendant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attendant }
    end
  end

  # GET /attendants/new
  # GET /attendants/new.json
  def new
    @attendant = Attendant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attendant }
    end
  end

  # GET /attendants/1/edit
  def edit
    @attendant = Attendant.find(params[:id])
  end

  # POST /attendants
  # POST /attendants.json
  def create
    @attendant = Attendant.new(params[:attendant])

    respond_to do |format|
      if @attendant.save
        format.html { redirect_to @attendant, notice: 'Attendant was successfully created.' }
        format.json { render json: @attendant, status: :created, location: @attendant }
      else
        format.html { render action: "new" }
        format.json { render json: @attendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attendants/1
  # PUT /attendants/1.json
  def update
    @attendant = Attendant.find(params[:id])

    respond_to do |format|
      if @attendant.update_attributes(params[:attendant])
        format.html { redirect_to @attendant, notice: 'Attendant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendants/1
  # DELETE /attendants/1.json
  def destroy
    @attendant = Attendant.find(params[:id])
    @attendant.destroy

    respond_to do |format|
      format.html { redirect_to attendants_url }
      format.json { head :no_content }
    end
  end
end
