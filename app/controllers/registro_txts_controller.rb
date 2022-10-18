class RegistroTxtsController < ApplicationController
  before_action :set_registro_txt, only: %i[ show edit update destroy ]

  # GET /registro_txts or /registro_txts.json
  def index
    @registro_txts = RegistroTxt.all
  end

  # GET /registro_txts/1 or /registro_txts/1.json
  def show
  end

  # GET /registro_txts/new
  def new
    @registro_txt = RegistroTxt.new
  end

  # GET /registro_txts/1/edit
  def edit
  end

  # POST /registro_txts or /registro_txts.json
  def create
    @registro_txt = RegistroTxt.new(registro_txt_params)

    respond_to do |format|
      if @registro_txt.save
        format.html { redirect_to registro_txt_url(@registro_txt), notice: "Registro txt was successfully created." }
        format.json { render :show, status: :created, location: @registro_txt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_txt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_txts/1 or /registro_txts/1.json
  def update
    respond_to do |format|
      if @registro_txt.update(registro_txt_params)
        format.html { redirect_to registro_txt_url(@registro_txt), notice: "Registro txt was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_txt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_txt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_txts/1 or /registro_txts/1.json
  def destroy
    @registro_txt.destroy

    respond_to do |format|
      format.html { redirect_to registro_txts_url, notice: "Registro txt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_txt
      @registro_txt = RegistroTxt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_txt_params
      params.require(:registro_txt).permit(:nombre, :valor)
    end
end
