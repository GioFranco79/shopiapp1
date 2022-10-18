class RegistroCnamesController < ApplicationController
  before_action :set_registro_cname, only: %i[ show edit update destroy ]

  # GET /registro_cnames or /registro_cnames.json
  def index
    @registro_cnames = RegistroCname.all
  end

  # GET /registro_cnames/1 or /registro_cnames/1.json
  def show
  end

  # GET /registro_cnames/new
  def new
    @registro_cname = RegistroCname.new
  end

  # GET /registro_cnames/1/edit
  def edit
  end

  # POST /registro_cnames or /registro_cnames.json
  def create
    @registro_cname = RegistroCname.new(registro_cname_params)

    respond_to do |format|
      if @registro_cname.save
        format.html { redirect_to registro_cname_url(@registro_cname), notice: "Registro cname was successfully created." }
        format.json { render :show, status: :created, location: @registro_cname }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_cname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_cnames/1 or /registro_cnames/1.json
  def update
    respond_to do |format|
      if @registro_cname.update(registro_cname_params)
        format.html { redirect_to registro_cname_url(@registro_cname), notice: "Registro cname was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_cname }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_cname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_cnames/1 or /registro_cnames/1.json
  def destroy
    @registro_cname.destroy

    respond_to do |format|
      format.html { redirect_to registro_cnames_url, notice: "Registro cname was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_cname
      @registro_cname = RegistroCname.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_cname_params
      params.require(:registro_cname).permit(:nombre, :redirige)
    end
end
