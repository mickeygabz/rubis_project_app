class MissionsController < ApplicationController
  # GET /missions or /missions.json
  def index
    @missions = Mission.all
  end


  # GET /missions/new
  def new
    @mission = Mission.new
  end

  # POST /missions or /missions.json
  def create
    @mission = Mission.new(mission_params)

    respond_to do |format|
      if @mission.save
        format.html { redirect_to missions_url, notice: "Mission was successfully created." }
        format.json { render :show, status: :created, location: @mission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Only allow a list of trusted parameters through.
    def mission_params
      params.require(:mission).permit(:title, :description, :website, :manufacturer)
    end
end
