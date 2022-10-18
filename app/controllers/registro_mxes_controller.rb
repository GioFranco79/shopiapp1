class RegistroMxesController < ApplicationController
  before_action :set_registro_mx, only: %i[ show edit update destroy ]

  # GET /registro_mxes or /registro_mxes.json
  def index
    @registro_mxes = RegistroMx.all
  end

  # GET /registro_mxes/1 or /registro_mxes/1.json
  def show
  end

  # GET /registro_mxes/new
  def new
    @registro_mx = RegistroMx.new
  end

  # GET /registro_mxes/1/edit
  def edit
  end

  # POST /registro_mxes or /registro_mxes.json
  def create
    @registro_mx = RegistroMx.new(registro_mx_params)

    respond_to do |format|
      if @registro_mx.save
        format.html { redirect_to registro_mx_url(@registro_mx), notice: "Registro mx was successfully created." }
        format.json { render :show, status: :created, location: @registro_mx }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_mx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_mxes/1 or /registro_mxes/1.json
  def update
    respond_to do |format|
      if @registro_mx.update(registro_mx_params)
        format.html { redirect_to registro_mx_url(@registro_mx), notice: "Registro mx was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_mx }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_mx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_mxes/1 or /registro_mxes/1.json
  def destroy
    @registro_mx.destroy

    respond_to do |format|
      format.html { redirect_to registro_mxes_url, notice: "Registro mx was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_mx
      @registro_mx = RegistroMx.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_mx_params
      params.require(:registro_mx).permit(:nombre, :redirige, :prioridad)
    end
end
