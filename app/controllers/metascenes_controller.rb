class MetascenesController < ApplicationController
  before_action :set_metascene, only: %i[ show edit update destroy ]

  # GET /metascenes or /metascenes.json
  def index
    @metascenes = Metascene.all
  end

  # GET /metascenes/1 or /metascenes/1.json
  def show
  end

  # GET /metascenes/new
  def new
    @metascene = Metascene.new
  end

  # GET /metascenes/1/edit
  def edit
  end

  # POST /metascenes or /metascenes.json
  def create
    @metascene = Metascene.new(metascene_params)

    respond_to do |format|
      if @metascene.save
        format.html { redirect_back(fallback_location: root_url, notice: "Article was successfully created.") }

        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end

  # PATCH/PUT /metascenes/1 or /metascenes/1.json
  def update
    respond_to do |format|
      if @metascene.update(metascene_params)
        format.html { redirect_to metascene_url(@metascene), notice: "Metascene was successfully updated." }
        format.json { render :show, status: :ok, location: @metascene }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @metascene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metascenes/1 or /metascenes/1.json
  def destroy
    @metascene.destroy!

    respond_to do |format|
      format.html { redirect_to metascenes_url, notice: "Metascene was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metascene
      @metascene = Metascene.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metascene_params
      params.require(:metascene).permit(:content, :place, :link, :active)
    end
end
