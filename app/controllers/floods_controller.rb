class FloodsController < ApplicationController
  before_action :set_flood, only: [:show, :edit, :update, :destroy]

  # GET /floods
  # GET /floods.json
  def index
    @floods = Flood.all
  end

  # GET /floods/1
  # GET /floods/1.json
  def show
  end

  # GET /floods/new
  def new
    @flood = Flood.new
  end

  # GET /floods/1/edit
  def edit
  end

  # POST /floods
  # POST /floods.json
  def create
    @flood = Flood.new(flood_params)

    respond_to do |format|
      if @flood.save
        format.html { redirect_to @flood, notice: 'Flood was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flood }
      else
        format.html { render action: 'new' }
        format.json { render json: @flood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floods/1
  # PATCH/PUT /floods/1.json
  def update
    respond_to do |format|
      if @flood.update(flood_params)
        format.html { redirect_to @flood, notice: 'Flood was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floods/1
  # DELETE /floods/1.json
  def destroy
    @flood.destroy
    respond_to do |format|
      format.html { redirect_to floods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flood
      @flood = Flood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flood_params
      params.require(:flood).permit(:name)
    end
end
