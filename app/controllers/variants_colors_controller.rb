class VariantsColorsController < ApplicationController
  before_action :set_variants_color, only: [:show, :edit, :update, :destroy]

  # GET /variants_colors
  # GET /variants_colors.json
  def index
    @variants_colors = VariantsColor.all
  end

  # GET /variants_colors/1
  # GET /variants_colors/1.json
  def show
  end

  # GET /variants_colors/new
  def new
    @variants_color = VariantsColor.new
  end

  # GET /variants_colors/1/edit
  def edit
  end

  # POST /variants_colors
  # POST /variants_colors.json
  def create
    @variants_color = VariantsColor.new(variants_color_params)

    respond_to do |format|
      if @variants_color.save
        format.html { redirect_to @variants_color, notice: 'Variants color was successfully created.' }
        format.json { render action: 'show', status: :created, location: @variants_color }
      else
        format.html { render action: 'new' }
        format.json { render json: @variants_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variants_colors/1
  # PATCH/PUT /variants_colors/1.json
  def update
    respond_to do |format|
      if @variants_color.update(variants_color_params)
        format.html { redirect_to @variants_color, notice: 'Variants color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @variants_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variants_colors/1
  # DELETE /variants_colors/1.json
  def destroy
    @variants_color.destroy
    respond_to do |format|
      format.html { redirect_to variants_colors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variants_color
      @variants_color = VariantsColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variants_color_params
      params[:variants_color]
    end
end
