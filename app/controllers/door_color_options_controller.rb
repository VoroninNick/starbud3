class DoorColorOptionsController < ApplicationController
  before_action :set_door_color_option, only: [:show, :edit, :update, :destroy]

  # GET /door_color_options
  # GET /door_color_options.json
  def index
    @door_color_options = DoorColorOption.all
  end

  # GET /door_color_options/1
  # GET /door_color_options/1.json
  def show
  end

  # GET /door_color_options/new
  def new
    @door_color_option = DoorColorOption.new
  end

  # GET /door_color_options/1/edit
  def edit
  end

  # POST /door_color_options
  # POST /door_color_options.json
  def create
    @door_color_option = DoorColorOption.new(door_color_option_params)

    respond_to do |format|
      if @door_color_option.save
        format.html { redirect_to @door_color_option, notice: 'Door color option was successfully created.' }
        format.json { render action: 'show', status: :created, location: @door_color_option }
      else
        format.html { render action: 'new' }
        format.json { render json: @door_color_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /door_color_options/1
  # PATCH/PUT /door_color_options/1.json
  def update
    respond_to do |format|
      if @door_color_option.update(door_color_option_params)
        format.html { redirect_to @door_color_option, notice: 'Door color option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @door_color_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /door_color_options/1
  # DELETE /door_color_options/1.json
  def destroy
    @door_color_option.destroy
    respond_to do |format|
      format.html { redirect_to door_color_options_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door_color_option
      @door_color_option = DoorColorOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def door_color_option_params
      params[:door_color_option]
    end
end
