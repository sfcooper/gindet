class GinsController < ApplicationController
  before_action :set_gin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :index]

  # GET /gins
  # GET /gins.json
  def index
    @gins = Gin.all
  end

  # GET /gins/1
  # GET /gins/1.json
  def show
    @gin = Gin.friendly.find(params[:id])
    @gin.punch(request)
  end

  # GET /gins/new
  def new
    @gin = Gin.new
    @gin.build_distillery
  end

  # GET /gins/1/edit
  def edit
    @gin.build_distillery
  end

  # POST /gins
  # POST /gins.json
  def create
    @gin = Gin.new(gin_params)

    respond_to do |format|
      if @gin.save
        format.html { redirect_to @gin, notice: 'Gin was successfully created.' }
        format.json { render :show, status: :created, location: @gin }
      else
        format.html { render :new }
        format.json { render json: @gin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gins/1
  # PATCH/PUT /gins/1.json
  def update
    respond_to do |format|
      if @gin.update(gin_params)
        format.html { redirect_to @gin, notice: 'Gin was successfully updated.' }
        format.json { render :show, status: :ok, location: @gin }
      else
        format.html { render :edit }
        format.json { render json: @gin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gins/1
  # DELETE /gins/1.json
  def destroy
    @gin.destroy
    respond_to do |format|
      format.html { redirect_to gins_url, notice: 'Gin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gin
      @gin = Gin.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gin_params
      params.require(:gin).permit(:name, :text, :snippet, :pic, :slug, distillery_attributes: [:id, :name])
    end
end
