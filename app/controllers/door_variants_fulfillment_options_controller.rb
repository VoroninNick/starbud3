class DoorVariantsFulfillmentOptionsController < ApplicationController
  before_action :set_door_variants_fulfillment_option, only: [:show, :edit, :update, :destroy]

  # GET /door_variants_fulfillment_options
  # GET /door_variants_fulfillment_options.json
  def index
    @door_variants_fulfillment_options = DoorVariantsFulfillmentOption.all
  end

  # GET /door_variants_fulfillment_options/1
  # GET /door_variants_fulfillment_options/1.json
  def show
  end

  # GET /door_variants_fulfillment_options/new
  def new
    @door_variants_fulfillment_option = DoorVariantsFulfillmentOption.new
  end

  # GET /door_variants_fulfillment_options/1/edit
  def edit
  end

  # POST /door_variants_fulfillment_options
  # POST /door_variants_fulfillment_options.json
  def create
    @door_variants_fulfillment_option = DoorVariantsFulfillmentOption.new(door_variants_fulfillment_option_params)

    respond_to do |format|
      if @door_variants_fulfillment_option.save
        format.html { redirect_to @door_variants_fulfillment_option, notice: 'Door variants fulfillment option was successfully created.' }
        format.json { render action: 'show', status: :created, location: @door_variants_fulfillment_option }
      else
        format.html { render action: 'new' }
        format.json { render json: @door_variants_fulfillment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /door_variants_fulfillment_options/1
  # PATCH/PUT /door_variants_fulfillment_options/1.json
  def update
    respond_to do |format|
      if @door_variants_fulfillment_option.update(door_variants_fulfillment_option_params)
        format.html { redirect_to @door_variants_fulfillment_option, notice: 'Door variants fulfillment option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @door_variants_fulfillment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /door_variants_fulfillment_options/1
  # DELETE /door_variants_fulfillment_options/1.json
  def destroy
    @door_variants_fulfillment_option.destroy
    respond_to do |format|
      format.html { redirect_to door_variants_fulfillment_options_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door_variants_fulfillment_option
      @door_variants_fulfillment_option = DoorVariantsFulfillmentOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def door_variants_fulfillment_option_params
      params[:door_variants_fulfillment_option]
    end
end
