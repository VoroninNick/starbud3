class DorVariantPerformancesController < ApplicationController
  before_action :set_dor_variant_performance, only: [:show, :edit, :update, :destroy]

  # GET /dor_variant_performances
  # GET /dor_variant_performances.json
  def index
    @dor_variant_performances = DorVariantPerformance.all
  end

  # GET /dor_variant_performances/1
  # GET /dor_variant_performances/1.json
  def show
  end

  # GET /dor_variant_performances/new
  def new
    @dor_variant_performance = DorVariantPerformance.new
  end

  # GET /dor_variant_performances/1/edit
  def edit
  end

  # POST /dor_variant_performances
  # POST /dor_variant_performances.json
  def create
    @dor_variant_performance = DorVariantPerformance.new(dor_variant_performance_params)

    respond_to do |format|
      if @dor_variant_performance.save
        format.html { redirect_to @dor_variant_performance, notice: 'Dor variant performance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dor_variant_performance }
      else
        format.html { render action: 'new' }
        format.json { render json: @dor_variant_performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dor_variant_performances/1
  # PATCH/PUT /dor_variant_performances/1.json
  def update
    respond_to do |format|
      if @dor_variant_performance.update(dor_variant_performance_params)
        format.html { redirect_to @dor_variant_performance, notice: 'Dor variant performance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dor_variant_performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dor_variant_performances/1
  # DELETE /dor_variant_performances/1.json
  def destroy
    @dor_variant_performance.destroy
    respond_to do |format|
      format.html { redirect_to dor_variant_performances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dor_variant_performance
      @dor_variant_performance = DorVariantPerformance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dor_variant_performance_params
      params[:dor_variant_performance]
    end
end
