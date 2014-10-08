class MainCatalogsController < ApplicationController
  before_action :set_main_catalog, only: [:show, :edit, :update, :destroy]

  # GET /main_catalogs
  # GET /main_catalogs.json
  def index
    @main_catalogs = MainCatalog.all
  end

  # GET /main_catalogs/1
  # GET /main_catalogs/1.json
  def show
  end

  # GET /main_catalogs/new
  def new
    @main_catalog = MainCatalog.new
  end

  # GET /main_catalogs/1/edit
  def edit
  end

  # POST /main_catalogs
  # POST /main_catalogs.json
  def create
    @main_catalog = MainCatalog.new(main_catalog_params)

    respond_to do |format|
      if @main_catalog.save
        format.html { redirect_to @main_catalog, notice: 'Main catalog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @main_catalog }
      else
        format.html { render action: 'new' }
        format.json { render json: @main_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_catalogs/1
  # PATCH/PUT /main_catalogs/1.json
  def update
    respond_to do |format|
      if @main_catalog.update(main_catalog_params)
        format.html { redirect_to @main_catalog, notice: 'Main catalog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @main_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_catalogs/1
  # DELETE /main_catalogs/1.json
  def destroy
    @main_catalog.destroy
    respond_to do |format|
      format.html { redirect_to main_catalogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_catalog
      @main_catalog = MainCatalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_catalog_params
      params[:main_catalog]
    end
end
