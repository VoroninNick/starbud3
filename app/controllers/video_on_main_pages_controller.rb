class VideoOnMainPagesController < ApplicationController
  before_action :set_video_on_main_page, only: [:show, :edit, :update, :destroy]

  # GET /video_on_main_pages
  # GET /video_on_main_pages.json
  def index
    @video_on_main_pages = VideoOnMainPage.all
  end

  # GET /video_on_main_pages/1
  # GET /video_on_main_pages/1.json
  def show
  end

  # GET /video_on_main_pages/new
  def new
    @video_on_main_page = VideoOnMainPage.new
  end

  # GET /video_on_main_pages/1/edit
  def edit
  end

  # POST /video_on_main_pages
  # POST /video_on_main_pages.json
  def create
    @video_on_main_page = VideoOnMainPage.new(video_on_main_page_params)

    respond_to do |format|
      if @video_on_main_page.save
        format.html { redirect_to @video_on_main_page, notice: 'Video on main page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @video_on_main_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @video_on_main_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_on_main_pages/1
  # PATCH/PUT /video_on_main_pages/1.json
  def update
    respond_to do |format|
      if @video_on_main_page.update(video_on_main_page_params)
        format.html { redirect_to @video_on_main_page, notice: 'Video on main page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video_on_main_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_on_main_pages/1
  # DELETE /video_on_main_pages/1.json
  def destroy
    @video_on_main_page.destroy
    respond_to do |format|
      format.html { redirect_to video_on_main_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_on_main_page
      @video_on_main_page = VideoOnMainPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_on_main_page_params
      params[:video_on_main_page]
    end
end
