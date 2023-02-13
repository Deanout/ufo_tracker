class UfosController < ApplicationController
  before_action :set_ufo, only: %i[ show edit update destroy ]

  # GET /ufos or /ufos.json
  def index
    @ufos = Ufo.all
  end

  # GET /ufos/1 or /ufos/1.json
  def show
  end

  # GET /ufos/new
  def new
    @ufo = Ufo.new
  end

  # GET /ufos/1/edit
  def edit
  end

  # POST /ufos or /ufos.json
  def create
    @ufo = Ufo.new(ufo_params)

    respond_to do |format|
      if @ufo.save
        format.html { redirect_to ufo_url(@ufo), notice: "Ufo was successfully created." }
        format.json { render :show, status: :created, location: @ufo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ufo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ufos/1 or /ufos/1.json
  def update
    respond_to do |format|
      if @ufo.update(ufo_params)
        format.html { redirect_to ufo_url(@ufo), notice: "Ufo was successfully updated." }
        format.json { render :show, status: :ok, location: @ufo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ufo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ufos/1 or /ufos/1.json
  def destroy
    @ufo.destroy

    respond_to do |format|
      format.html { redirect_to ufos_url, notice: "Ufo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ufo
      @ufo = Ufo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ufo_params
      params.require(:ufo).permit(:name, :status, :description)
    end
end
