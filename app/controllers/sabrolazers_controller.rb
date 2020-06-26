class SabrolazersController < ApplicationController
  before_action :set_sabrolazer, only: [:show, :edit, :update, :destroy]

  # GET /sabrolazers
  # GET /sabrolazers.json
  def index
    @sabrolazers = Sabrolazer.all
  end

  # GET /sabrolazers/1
  # GET /sabrolazers/1.json
  def show
  end

  # GET /sabrolazers/new
  def new
    @sabrolazer = Sabrolazer.new
  end

  # GET /sabrolazers/1/edit
  def edit
  end

  # POST /sabrolazers
  # POST /sabrolazers.json
  def create
    @sabrolazer = Sabrolazer.new(sabrolazer_params)

    respond_to do |format|
      if @sabrolazer.save
        format.html { redirect_to @sabrolazer, notice: 'Sabrolazer was successfully created.' }
        format.json { render :show, status: :created, location: @sabrolazer }
      else
        format.html { render :new }
        format.json { render json: @sabrolazer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sabrolazers/1
  # PATCH/PUT /sabrolazers/1.json
  def update
    respond_to do |format|
      if @sabrolazer.update(sabrolazer_params)
        format.html { redirect_to @sabrolazer, notice: 'Sabrolazer was successfully updated.' }
        format.json { render :show, status: :ok, location: @sabrolazer }
      else
        format.html { render :edit }
        format.json { render json: @sabrolazer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sabrolazers/1
  # DELETE /sabrolazers/1.json
  def destroy
    @sabrolazer.destroy
    respond_to do |format|
      format.html { redirect_to sabrolazers_url, notice: 'Sabrolazer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sabrolazer
      @sabrolazer = Sabrolazer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sabrolazer_params
      params.require(:sabrolazer).permit(:title, :level, :color)
    end
end
