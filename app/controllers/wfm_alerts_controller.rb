class WfmAlertsController < ApplicationController
  before_action :set_wfm_alert, only: [:show, :edit, :update, :destroy]

  # GET /wfm_alerts
  # GET /wfm_alerts.json
  def index
    @wfm_alerts = WfmAlert.all
    @ann = WfmAlert.where('subject LIKE ?', '%Ann Taylor%').count
    @giant = WfmAlert.where('subject LIKE ?', '%Giant%').count
    @pilot = WfmAlert.where('subject LIKE ?', '%Pilot%').count
    @big = WfmAlert.where('subject LIKE ?', '%Big%').count
    @mariott = WfmAlert.where('subject LIKE ?', '%Mariott%').count
    @ptc = WfmAlert.where('subject LIKE ?', '%PTC%').count
    @farms = WfmAlert.where('subject LIKE ?', '%Two Farms%').count
    @office = WfmAlert.where('subject LIKE ?', '%Office%').count
    @duane = WfmAlert.where('subject LIKE ?', '%DuaneReade%').count
    @walmart = WfmAlert.where('subject LIKE ?', '%Walmart%').count
    @atlas = WfmAlert.where('subject LIKE ?', '%Atlas%').count
    @fiesta = WfmAlert.where('subject LIKE ?', '%Fiesta%').count
    @tmtgpi = WfmAlert.where('subject LIKE ?', '%TMTGPI%').count
    @evans = WfmAlert.where('subject LIKE ?', '%Evans%').count
  end

  # GET /wfm_alerts/1
  # GET /wfm_alerts/1.json
  def show
  end

  # GET /wfm_alerts/new
  def new
    @wfm_alert = WfmAlert.new
  end

  # GET /wfm_alerts/1/edit
  def edit
  end

  # POST /wfm_alerts
  # POST /wfm_alerts.json
  def create
    @wfm_alert = WfmAlert.new(wfm_alert_params)

    respond_to do |format|
      if @wfm_alert.save
        format.html { redirect_to @wfm_alert, notice: 'Wfm alert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wfm_alert }
      else
        format.html { render action: 'new' }
        format.json { render json: @wfm_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wfm_alerts/1
  # PATCH/PUT /wfm_alerts/1.json
  def update
    respond_to do |format|
      if @wfm_alert.update(wfm_alert_params)
        format.html { redirect_to @wfm_alert, notice: 'Wfm alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wfm_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wfm_alerts/1
  # DELETE /wfm_alerts/1.json
  def destroy
    @wfm_alert.destroy
    respond_to do |format|
      format.html { redirect_to wfm_alerts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wfm_alert
      @wfm_alert = WfmAlert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wfm_alert_params
      params.require(:wfm_alert).permit(:from, :subject, :pool_id)
    end
end
