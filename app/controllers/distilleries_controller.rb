class DistilleriesController < ApplicationController
  before_action :set_distillery, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :index]

  # GET /distilleries
  # GET /distilleries.json
  def index
    @distilleries = Distillery.all
  end

  # GET /distilleries/1
  # GET /distilleries/1.json
  def show
  end

  # GET /distilleries/new
  def new
    @distillery = Distillery.find_or_create_by(name: 'name')
  end

  # GET /distilleries/1/edit
  def edit
  end

  # POST /distilleries
  # POST /distilleries.json
  def create
    @distillery = Distillery.new(distillery_params)

    respond_to do |format|
      if @distillery.save
        format.html { redirect_to @distillery, notice: 'Distillery was successfully created.' }
        format.json { render :show, status: :created, location: @distillery }
      else
        format.html { render :new }
        format.json { render json: @distillery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distilleries/1
  # PATCH/PUT /distilleries/1.json
  def update
    respond_to do |format|
      if @distillery.update(distillery_params)
        format.html { redirect_to @distillery, notice: 'Distillery was successfully updated.' }
        format.json { render :show, status: :ok, location: @distillery }
      else
        format.html { render :edit }
        format.json { render json: @distillery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distilleries/1
  # DELETE /distilleries/1.json
  def destroy
    @distillery.destroy
    respond_to do |format|
      format.html { redirect_to distilleries_url, notice: 'Distillery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distillery
      @distillery = Distillery.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distillery_params
      params.require(:name).permit(:name, :street, :area, :city, :postcode, :website, :phonenumber, :text, :slug, :pic)
    end
end
