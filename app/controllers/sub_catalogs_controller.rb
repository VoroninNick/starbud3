class SubCatalogsController < ApplicationController
  before_action :set_sub_catalog, only: [:show, :edit, :update, :destroy]

  # GET /sub_catalogs
  # GET /sub_catalogs.json
  def index
    @sub_catalogs = SubCatalog.all
  end

  # GET /sub_catalogs/1
  # GET /sub_catalogs/1.json
  def show
  end

  # GET /sub_catalogs/new
  def new
    @sub_catalog = SubCatalog.new
  end

  # GET /sub_catalogs/1/edit
  def edit
  end

  # POST /sub_catalogs
  # POST /sub_catalogs.json
  def create
    @sub_catalog = SubCatalog.new(sub_catalog_params)

    respond_to do |format|
      if @sub_catalog.save
        format.html { redirect_to @sub_catalog, notice: 'Sub catalog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sub_catalog }
      else
        format.html { render action: 'new' }
        format.json { render json: @sub_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_catalogs/1
  # PATCH/PUT /sub_catalogs/1.json
  def update
    respond_to do |format|
      if @sub_catalog.update(sub_catalog_params)
        format.html { redirect_to @sub_catalog, notice: 'Sub catalog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sub_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_catalogs/1
  # DELETE /sub_catalogs/1.json
  def destroy
    @sub_catalog.destroy
    respond_to do |format|
      format.html { redirect_to sub_catalogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_catalog
      @sub_catalog = SubCatalog.find_by_name(params[:sub_catalog_url])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_catalog_params
      params[:sub_catalog]
    end
end
