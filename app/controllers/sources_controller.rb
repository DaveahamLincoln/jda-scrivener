#This file controls the flow of data to and between the various /sources/ routes.  For instance, the
#  index action handles the information available to the /sources/index view.
#
#Since we don't want users to be able to create or change wfm_alerts, there are no Create, New, Edit, 
#  or Update actions.

class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :edit, :update, :destroy]

  # GET /sources
  # GET /sources.json
  def index
    @sources = Source.all
  end

  # GET /sources/1
  # GET /sources/1.json
  def show
    @alert_count = Alert.where(from: Source.find(params[:id]).name).count
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source
      @source = Source.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_params
      params.require(:source).permit(:name, :status)
    end
end
