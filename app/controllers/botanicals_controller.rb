class BotanicalsController < ApplicationController
  before_action :set_botanical, only: [:show, :edit, :update, :destroy]

  # GET /botanicals
  # GET /botanicals.json
  def index
    @botanicals = Botanical.all
  end

  # GET /botanicals/1
  # GET /botanicals/1.json
  def show
  end

  # GET /botanicals/new
  def new
    @botanical = Botanical.new
  end

  # GET /botanicals/1/edit
  def edit
  end

  # POST /botanicals
  # POST /botanicals.json
  def create
    @botanical = Botanical.new(botanical_params)

    respond_to do |format|
      if @botanical.save
        format.html { redirect_to @botanical, notice: 'Botanical was successfully created.' }
        format.json { render :show, status: :created, location: @botanical }
      else
        format.html { render :new }
        format.json { render json: @botanical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /botanicals/1
  # PATCH/PUT /botanicals/1.json
  def update
    respond_to do |format|
      if @botanical.update(botanical_params)
        format.html { redirect_to @botanical, notice: 'Botanical was successfully updated.' }
        format.json { render :show, status: :ok, location: @botanical }
      else
        format.html { render :edit }
        format.json { render json: @botanical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /botanicals/1
  # DELETE /botanicals/1.json
  def destroy
    @botanical.destroy
    respond_to do |format|
      format.html { redirect_to botanicals_url, notice: 'Botanical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_botanical
      @botanical = Botanical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def botanical_params
      params.require(:botanical).permit(:name, :description)
    end
end
