class UsefulVideosController < ApplicationController
  before_action :set_useful_video, only: [:show, :edit, :update, :destroy]

  # GET /useful_videos
  # GET /useful_videos.json
  def index
    @useful_videos = UsefulVideo.all
  end

  # GET /useful_videos/1
  # GET /useful_videos/1.json
  def show
  end

  # GET /useful_videos/new
  def new
    @useful_video = UsefulVideo.new
  end

  # GET /useful_videos/1/edit
  def edit
  end

  # POST /useful_videos
  # POST /useful_videos.json
  def create
    @useful_video = UsefulVideo.new(useful_video_params)

    respond_to do |format|
      if @useful_video.save
        format.html { redirect_to @useful_video, notice: 'Useful video was successfully created.' }
        format.json { render action: 'show', status: :created, location: @useful_video }
      else
        format.html { render action: 'new' }
        format.json { render json: @useful_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /useful_videos/1
  # PATCH/PUT /useful_videos/1.json
  def update
    respond_to do |format|
      if @useful_video.update(useful_video_params)
        format.html { redirect_to @useful_video, notice: 'Useful video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @useful_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useful_videos/1
  # DELETE /useful_videos/1.json
  def destroy
    @useful_video.destroy
    respond_to do |format|
      format.html { redirect_to useful_videos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_useful_video
      @useful_video = UsefulVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def useful_video_params
      params[:useful_video]
    end
end
