class DorInformationsController < ApplicationController
  before_action :set_dor_information, only: [:show, :edit, :update, :destroy]

  # GET /dor_informations
  # GET /dor_informations.json
  def index
    @dor_informations = DorInformation.all
  end

  # GET /dor_informations/1
  # GET /dor_informations/1.json
  def show
  end

  # GET /dor_informations/new
  def new
    @dor_information = DorInformation.new
  end

  # GET /dor_informations/1/edit
  def edit
  end

  # POST /dor_informations
  # POST /dor_informations.json
  def create
    @dor_information = DorInformation.new(dor_information_params)

    respond_to do |format|
      if @dor_information.save
        format.html { redirect_to @dor_information, notice: 'Dor information was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dor_information }
      else
        format.html { render action: 'new' }
        format.json { render json: @dor_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dor_informations/1
  # PATCH/PUT /dor_informations/1.json
  def update
    respond_to do |format|
      if @dor_information.update(dor_information_params)
        format.html { redirect_to @dor_information, notice: 'Dor information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dor_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dor_informations/1
  # DELETE /dor_informations/1.json
  def destroy
    @dor_information.destroy
    respond_to do |format|
      format.html { redirect_to dor_informations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dor_information
      @dor_information = DorInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dor_information_params
      params[:dor_information]
    end
end
