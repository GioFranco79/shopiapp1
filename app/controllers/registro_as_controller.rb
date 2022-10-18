class RegistroAsController < ApplicationController
  before_action :set_registro_a, only: %i[ show edit update destroy ]

  # GET /registro_as or /registro_as.json
  def index
    @registro_as = RegistroA.all
  end

  # GET /registro_as/1 or /registro_as/1.json
  def show
  end

  # GET /registro_as/new
  def new
    @registro_a = RegistroA.new
  end

  # GET /registro_as/1/edit
  def edit
  end

  # POST /registro_as or /registro_as.json
  def create
    @registro_a = RegistroA.new(registro_a_params)

    respond_to do |format|
      if @registro_a.save
        format.html { redirect_to registro_a_url(@registro_a), notice: "Registro a was successfully created." }
        format.json { render :show, status: :created, location: @registro_a }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_as/1 or /registro_as/1.json
  def update
    respond_to do |format|
      if @registro_a.update(registro_a_params)
        format.html { redirect_to registro_a_url(@registro_a), notice: "Registro a was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_a }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_as/1 or /registro_as/1.json
  def destroy
    @registro_a.destroy

    respond_to do |format|
      format.html { redirect_to registro_as_url, notice: "Registro a was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_a
      @registro_a = RegistroA.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_a_params
      params.require(:registro_a).permit(:nombre, :redirige)
    end
end
