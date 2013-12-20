class AboutArticleImagesController < ApplicationController
  before_action :set_about_article_image, only: [:show, :edit, :update, :destroy]

  # GET /about_article_images
  # GET /about_article_images.json
  def index
    @about_article_images = AboutArticleImage.all
  end

  # GET /about_article_images/1
  # GET /about_article_images/1.json
  def show
  end

  # GET /about_article_images/new
  def new
    @about_article_image = AboutArticleImage.new
  end

  # GET /about_article_images/1/edit
  def edit
  end

  # POST /about_article_images
  # POST /about_article_images.json
  def create
    @about_article_image = AboutArticleImage.new(about_article_image_params)

    respond_to do |format|
      if @about_article_image.save
        format.html { redirect_to @about_article_image, notice: 'About article image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @about_article_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @about_article_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_article_images/1
  # PATCH/PUT /about_article_images/1.json
  def update
    respond_to do |format|
      if @about_article_image.update(about_article_image_params)
        format.html { redirect_to @about_article_image, notice: 'About article image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @about_article_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_article_images/1
  # DELETE /about_article_images/1.json
  def destroy
    @about_article_image.destroy
    respond_to do |format|
      format.html { redirect_to about_article_images_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_article_image
      @about_article_image = AboutArticleImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_article_image_params
      params[:about_article_image]
    end
end
