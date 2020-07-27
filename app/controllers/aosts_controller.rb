class AostsController < ApplicationController
  before_action :set_aost, only: [:show, :edit, :update, :destroy]

  # GET /aosts
  # GET /aosts.json
  def index
    @aosts = Aost.all
  end

  # GET /aosts/1
  # GET /aosts/1.json
  def show
  end

  # GET /aosts/new
  def new
    @aost = Aost.new
  end

  # GET /aosts/1/edit
  def edit
  end

  # POST /aosts
  # POST /aosts.json
  def create
    @aost = Aost.new(aost_params)

    respond_to do |format|
      if @aost.save
        format.html { redirect_to @aost, notice: 'Aost was successfully created.' }
        format.json { render :show, status: :created, location: @aost }
      else
        format.html { render :new }
        format.json { render json: @aost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aosts/1
  # PATCH/PUT /aosts/1.json
  def update
    respond_to do |format|
      if @aost.update(aost_params)
        format.html { redirect_to @aost, notice: 'Aost was successfully updated.' }
        format.json { render :show, status: :ok, location: @aost }
      else
        format.html { render :edit }
        format.json { render json: @aost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aosts/1
  # DELETE /aosts/1.json
  def destroy
    @aost.destroy
    respond_to do |format|
      format.html { redirect_to aosts_url, notice: 'Aost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aost
      @aost = Aost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aost_params
      params.require(:aost).permit(:title, :description)
    end
end
