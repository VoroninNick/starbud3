class AboutArticlesController < ApplicationController
  before_action :set_about_article, only: [:show, :edit, :update, :destroy]

  # GET /about_articles
  # GET /about_articles.json
  def index
    @about_articles = AboutArticle.all
  end

  # GET /about_articles/1
  # GET /about_articles/1.json
  def show
  end

  # GET /about_articles/new
  def new
    @about_article = AboutArticle.new
  end

  # GET /about_articles/1/edit
  def edit
  end

  # POST /about_articles
  # POST /about_articles.json
  def create
    @about_article = AboutArticle.new(about_article_params)

    respond_to do |format|
      if @about_article.save
        format.html { redirect_to @about_article, notice: 'About article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @about_article }
      else
        format.html { render action: 'new' }
        format.json { render json: @about_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_articles/1
  # PATCH/PUT /about_articles/1.json
  def update
    respond_to do |format|
      if @about_article.update(about_article_params)
        format.html { redirect_to @about_article, notice: 'About article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @about_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_articles/1
  # DELETE /about_articles/1.json
  def destroy
    @about_article.destroy
    respond_to do |format|
      format.html { redirect_to about_articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_article
      @about_article = AboutArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_article_params
      params[:about_article]
    end
end
