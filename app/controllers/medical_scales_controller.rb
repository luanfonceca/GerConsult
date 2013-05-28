class MedicalScalesController < ApplicationController
  # GET /medical_scales
  # GET /medical_scales.json
  def index
    @medical_scales = MedicalScale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medical_scales }
    end
  end

  # GET /medical_scales/1
  # GET /medical_scales/1.json
  def show
    @medical_scale = MedicalScale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medical_scale }
    end
  end

  # GET /medical_scales/new
  # GET /medical_scales/new.json
  def new
    @medical_scale = MedicalScale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medical_scale }
    end
  end

  # GET /medical_scales/1/edit
  def edit
    @medical_scale = MedicalScale.find(params[:id])
  end

  # POST /medical_scales
  # POST /medical_scales.json
  def create
    @medical_scale = MedicalScale.new(params[:medical_scale])

    respond_to do |format|
      if @medical_scale.save
        format.html { redirect_to @medical_scale, notice: 'Medical scale was successfully created.' }
        format.json { render json: @medical_scale, status: :created, location: @medical_scale }
      else
        format.html { render action: "new" }
        format.json { render json: @medical_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medical_scales/1
  # PUT /medical_scales/1.json
  def update
    @medical_scale = MedicalScale.find(params[:id])

    respond_to do |format|
      if @medical_scale.update_attributes(params[:medical_scale])
        format.html { redirect_to @medical_scale, notice: 'Medical scale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medical_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_scales/1
  # DELETE /medical_scales/1.json
  def destroy
    @medical_scale = MedicalScale.find(params[:id])
    @medical_scale.destroy

    respond_to do |format|
      format.html { redirect_to medical_scales_url }
      format.json { head :no_content }
    end
  end
end
