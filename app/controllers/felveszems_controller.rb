class FelveszemsController < ApplicationController
  before_action :set_felveszem, only: %i[ show edit update destroy ]

  # GET /felveszems or /felveszems.json
  def index
    @felveszems = Felveszem.all
  end

  # GET /felveszems/1 or /felveszems/1.json
  def show
  end

  # GET /felveszems/new
  def new
    @felveszem = Felveszem.new
  end

  # GET /felveszems/1/edit
  def edit
  end

  # POST /felveszems or /felveszems.json
  def create
    @felveszem = Felveszem.new(felveszem_params)

    respond_to do |format|
      if @felveszem.save
        format.html { redirect_to request.referrer || felveszem_url(@felveszem), notice: "Felveszem was successfully created." }
        format.json { render :show, status: :created, location: @felveszem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @felveszem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /felveszems/1 or /felveszems/1.json
  def update
    respond_to do |format|
      if @felveszem.update(felveszem_params)
        format.html { redirect_to request.referrer || felveszem_url(@felveszem), notice: "Felveszem was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

  # DELETE /felveszems/1 or /felveszems/1.json
  def destroy
    @felveszem.destroy

    respond_to do |format|
      format.html { redirect_to request.referrer , notice: "Felveszem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_felveszem
      @felveszem = Felveszem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def felveszem_params
      params.require(:felveszem).permit(:content, :link , :sorrend)
    end
end
