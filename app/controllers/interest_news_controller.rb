class InterestNewsController < ApplicationController
  before_action :set_interest_news, only: [:show, :edit, :update, :destroy]

  # GET /interest_news
  # GET /interest_news.json
  def index
    @interest_news = InterestNews.all
  end

  # GET /interest_news/1
  # GET /interest_news/1.json
  def show
    @interest_news_item = InterestNews.find_by_id(params[:id])
    @related_interest_news = InterestNews.where('id != '+params[:id]+'').limit(4).order('updated_at desc')
  end

  # GET /interest_news/new
  def new
    @interest_news = InterestNews.new
  end

  # GET /interest_news/1/edit
  def edit
  end

  # POST /interest_news
  # POST /interest_news.json
  def create
    @interest_news = InterestNews.new(interest_news_params)

    respond_to do |format|
      if @interest_news.save
        format.html { redirect_to @interest_news, notice: 'Interest news was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interest_news }
      else
        format.html { render action: 'new' }
        format.json { render json: @interest_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_news/1
  # PATCH/PUT /interest_news/1.json
  def update
    respond_to do |format|
      if @interest_news.update(interest_news_params)
        format.html { redirect_to @interest_news, notice: 'Interest news was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interest_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_news/1
  # DELETE /interest_news/1.json
  def destroy
    @interest_news.destroy
    respond_to do |format|
      format.html { redirect_to interest_news_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_news
      @interest_news = InterestNews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_news_params
      params[:interest_news]
    end
end
