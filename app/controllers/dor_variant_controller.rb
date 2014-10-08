class DorVariantController < ApplicationController
  before_action :set_dor_variant, only: [:show, :edit, :update, :destroy]

  # GET /dor_variants
  # GET /dor_variants.json
  def index
    @dor_variants = DorVariant.all
  end

  # GET /dor_variants/1
  # GET /dor_variants/1.json
  def show
  end

  # GET /dor_variants/new
  def new
    @dor_variants = DorVariant.new
  end

  # GET /dor_variants/1/edit
  def edit
  end

  # POST /dor_variants
  # POST /dor_variants.json
  def create
    @dor_variants = DorVariant.new(dor_variant_params)

    respond_to do |format|
      if @dor_variants.save
        format.html { redirect_to @dor_variants, notice: 'Dor variant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dor_variants }
      else
        format.html { render action: 'new' }
        format.json { render json: @dor_variants.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dor_variants/1
  # PATCH/PUT /dor_variants/1.json
  def update
    respond_to do |format|
      if @dor_variants.update(dor_variant_params)
        format.html { redirect_to @dor_variants, notice: 'Dor variant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dor_variants.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dor_variants/1
  # DELETE /dor_variants/1.json
  def destroy
    @dor_variants.destroy
    respond_to do |format|
      format.html { redirect_to dor_variants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dor_variant
      @dor_variants = DorVariant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dor_variant_params
      params[:dor_variants]
    end
end
