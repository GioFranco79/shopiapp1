class RegistroAaaasController < ApplicationController
  before_action :set_registro_aaaa, only: %i[ show edit update destroy ]

  # GET /registro_aaaas or /registro_aaaas.json
  def index
    @registro_aaaas = RegistroAaaa.all
  end

  # GET /registro_aaaas/1 or /registro_aaaas/1.json
  def show
  end

  # GET /registro_aaaas/new
  def new
    @registro_aaaa = RegistroAaaa.new
  end

  # GET /registro_aaaas/1/edit
  def edit
  end

  # POST /registro_aaaas or /registro_aaaas.json
  def create
    @registro_aaaa = RegistroAaaa.new(registro_aaaa_params)

    respond_to do |format|
      if @registro_aaaa.save
        format.html { redirect_to registro_aaaa_url(@registro_aaaa), notice: "Registro aaaa was successfully created." }
        format.json { render :show, status: :created, location: @registro_aaaa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_aaaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_aaaas/1 or /registro_aaaas/1.json
  def update
    respond_to do |format|
      if @registro_aaaa.update(registro_aaaa_params)
        format.html { redirect_to registro_aaaa_url(@registro_aaaa), notice: "Registro aaaa was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_aaaa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_aaaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_aaaas/1 or /registro_aaaas/1.json
  def destroy
    @registro_aaaa.destroy

    respond_to do |format|
      format.html { redirect_to registro_aaaas_url, notice: "Registro aaaa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_aaaa
      @registro_aaaa = RegistroAaaa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_aaaa_params
      params.require(:registro_aaaa).permit(:nombre, :redirige)
    end
end
