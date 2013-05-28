class HandbooksController < ApplicationController
  # GET /handbooks
  # GET /handbooks.json
  def index
    @handbooks = Handbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbooks }
    end
  end

  # GET /handbooks/1
  # GET /handbooks/1.json
  def show
    @handbook = Handbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook }
    end
  end

  # GET /handbooks/new
  # GET /handbooks/new.json
  def new
    @handbook = Handbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook }
    end
  end

  # GET /handbooks/1/edit
  def edit
    @handbook = Handbook.find(params[:id])
  end

  # POST /handbooks
  # POST /handbooks.json
  def create
    @handbook = Handbook.new(params[:handbook])

    respond_to do |format|
      if @handbook.save
        format.html { redirect_to @handbook, notice: 'Handbook was successfully created.' }
        format.json { render json: @handbook, status: :created, location: @handbook }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbooks/1
  # PUT /handbooks/1.json
  def update
    @handbook = Handbook.find(params[:id])

    respond_to do |format|
      if @handbook.update_attributes(params[:handbook])
        format.html { redirect_to @handbook, notice: 'Handbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbooks/1
  # DELETE /handbooks/1.json
  def destroy
    @handbook = Handbook.find(params[:id])
    @handbook.destroy

    respond_to do |format|
      format.html { redirect_to handbooks_url }
      format.json { head :no_content }
    end
  end
end
