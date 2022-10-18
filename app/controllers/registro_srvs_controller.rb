class RegistroSrvsController < ApplicationController
  before_action :set_registro_srv, only: %i[ show edit update destroy ]

  # GET /registro_srvs or /registro_srvs.json
  def index
    @registro_srvs = RegistroSrv.all
  end

  # GET /registro_srvs/1 or /registro_srvs/1.json
  def show
  end

  # GET /registro_srvs/new
  def new
    @registro_srv = RegistroSrv.new
  end

  # GET /registro_srvs/1/edit
  def edit
  end

  # POST /registro_srvs or /registro_srvs.json
  def create
    @registro_srv = RegistroSrv.new(registro_srv_params)

    respond_to do |format|
      if @registro_srv.save
        format.html { redirect_to registro_srv_url(@registro_srv), notice: "Registro srv was successfully created." }
        format.json { render :show, status: :created, location: @registro_srv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_srv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_srvs/1 or /registro_srvs/1.json
  def update
    respond_to do |format|
      if @registro_srv.update(registro_srv_params)
        format.html { redirect_to registro_srv_url(@registro_srv), notice: "Registro srv was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_srv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_srv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_srvs/1 or /registro_srvs/1.json
  def destroy
    @registro_srv.destroy

    respond_to do |format|
      format.html { redirect_to registro_srvs_url, notice: "Registro srv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_srv
      @registro_srv = RegistroSrv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_srv_params
      params.require(:registro_srv).permit(:servicio, :protocolo, :nombre, :objetivo, :prioridad, :peso, :puerto)
    end
end
