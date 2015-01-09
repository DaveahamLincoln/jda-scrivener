class AlertsController < ApplicationController
  before_action :set_alert, only: [:show, :edit, :update, :destroy]

  # GET /alerts
  # GET /alerts.json
  def index
    @alerts = Alert.all
    @dunkin = Alert.where('subject LIKE ?', '%adqsr%').count
    @boston = Alert.where('subject LIKE ?', '%boston%').count
    @chevron = Alert.where('subject LIKE ?', '%chevron%').count
    @ntr = Alert.where('subject LIKE ?', '%ntr%').count
    @fg = Alert.where('subject LIKE ?', '%five%').count
    @fhs = Alert.where('subject LIKE ?', '%fire%').count
    @bte = Alert.where('subject LIKE ?', '%bte%').count
    @cara = Alert.where('subject LIKE ?', '%cara%').count
    @sheetz = Alert.where('subject LIKE ?', '%sheetz%').count
    @speed = Alert.where('subject LIKE ?', '%ssa%').count + Alert.where('subject LIKE ?', '%speed%').count
    @cstore = Alert.where('subject LIKE ?', '%cstore%').count
    @churchs = Alert.where('subject LIKE ?', '%church%').count + Alert.where('subject LIKE ?', '%afce%').count
    @oc = Alert.where('subject LIKE ?', '%charl%').count
    @rds = Alert.where('subject LIKE ?', '%rds%').count
    @pop = Alert.where('subject LIKE ?', '%popeye%').count
    @mcd = Alert.where('subject LIKE ?', '%mcd%').count
  end

  # GET /alerts/1
  # GET /alerts/1.json
  def show
  end

  # GET /alerts/new
  def new
    @alert = Alert.new
  end

  # GET /alerts/1/edit
  def edit
  end

  # POST /alerts
  # POST /alerts.json
  def create
    @alert = Alert.new(alert_params)

    respond_to do |format|
      if @alert.save
        format.html { redirect_to @alert, notice: 'Alert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @alert }
      else
        format.html { render action: 'new' }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alerts/1
  # PATCH/PUT /alerts/1.json
  def update
    respond_to do |format|
      if @alert.update(alert_params)
        format.html { redirect_to @alert, notice: 'Alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alerts/1
  # DELETE /alerts/1.json
  def destroy
    @alert.destroy
    respond_to do |format|
      format.html { redirect_to alerts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_params
      params.require(:alert).permit(:from, :subject)
    end
end
