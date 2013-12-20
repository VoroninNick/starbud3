class DorsController < ApplicationController
  before_action :set_dor, only: [:show, :edit, :update, :destroy]

  # GET /dors
  # GET /dors.json
  def index
    @dors = Dor.all
  end

  # GET /dors/1
  # GET /dors/1.json
  def show
  end

  # GET /dors/new
  def new
    @dor = Dor.new
  end

  # GET /dors/1/edit
  def edit
  end

  # POST /dors
  # POST /dors.json
  def create
    @dor = Dor.new(dor_params)

    respond_to do |format|
      if @dor.save
        format.html { redirect_to @dor, notice: 'Dor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dor }
      else
        format.html { render action: 'new' }
        format.json { render json: @dor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dors/1
  # PATCH/PUT /dors/1.json
  def update
    respond_to do |format|
      if @dor.update(dor_params)
        format.html { redirect_to @dor, notice: 'Dor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dors/1
  # DELETE /dors/1.json
  def destroy
    @dor.destroy
    respond_to do |format|
      format.html { redirect_to dors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dor
      @dor = Dor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dor_params
      params[:dor]
    end
end
