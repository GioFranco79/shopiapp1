class DominiosController < ApplicationController
  before_action :set_dominio, only: %i[ show edit update destroy ]

  # GET /dominios or /dominios.json
  def index
    @dominios = Dominio.all
  end

  # GET /dominios/1 or /dominios/1.json
  def show
  end

  # GET /dominios/new
  def new
    @dominio = Dominio.new
  end

  # GET /dominios/1/edit
  def edit
  end

  # POST /dominios or /dominios.json
  def create
    @dominio = Dominio.new(dominio_params)

    respond_to do |format|
      if @dominio.save
        format.html { redirect_to dominio_url(@dominio), notice: "Dominio was successfully created." }
        format.json { render :show, status: :created, location: @dominio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dominio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dominios/1 or /dominios/1.json
  def update
    respond_to do |format|
      if @dominio.update(dominio_params)
        format.html { redirect_to dominio_url(@dominio), notice: "Dominio was successfully updated." }
        format.json { render :show, status: :ok, location: @dominio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dominio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dominios/1 or /dominios/1.json
  def destroy
    @dominio.destroy

    respond_to do |format|
      format.html { redirect_to dominios_url, notice: "Dominio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dominio
      @dominio = Dominio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dominio_params
      params.require(:dominio).permit(:nombre)
    end
end
