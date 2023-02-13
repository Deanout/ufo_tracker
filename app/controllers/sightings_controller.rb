class SightingsController < ApplicationController
  before_action :set_sighting, only: %i[show edit update destroy]

  # GET /sightings or /sightings.json
  def index
    @sightings = Sighting.all
  end

  # GET /sightings/1 or /sightings/1.json
  def show; end

  # GET /sightings/new
  def new
    @sighting = Sighting.new
    @sighting.coordinates.build
  end

  # GET /sightings/1/edit
  def edit; end

  # POST /sightings or /sightings.json
  def create
    @sighting = Sighting.new(sighting_params)

    respond_to do |format|
      if @sighting.save
        format.html { redirect_to sighting_url(@sighting), notice: 'Sighting was successfully created.' }
        format.json { render :show, status: :created, location: @sighting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sightings/1 or /sightings/1.json
  def update
    respond_to do |format|
      if @sighting.update(sighting_params)
        format.html { redirect_to sighting_url(@sighting), notice: 'Sighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sighting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sightings/1 or /sightings/1.json
  def destroy
    @sighting.destroy

    respond_to do |format|
      format.html { redirect_to sightings_url, notice: 'Sighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_sighting
    @sighting = Sighting.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def sighting_params
    params.require(:sighting).permit(
      :ufo_id, 
      :date, 
      :time, 
      coordinates_attributes: %i[id lat long _destroy])
  end
end
