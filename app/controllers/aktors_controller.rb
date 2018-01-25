class AktorsController < ApplicationController
  before_action :set_aktor, only: [:show, :edit, :update, :destroy]

  # GET /aktors
  # GET /aktors.json
  def index
    @aktors = Aktor.all
  end

  # GET /aktors/1
  # GET /aktors/1.json
  def show
  end

  # GET /aktors/new
  def new
    @aktor = Aktor.new
  end

  # GET /aktors/1/edit
  def edit
  end

  # POST /aktors
  # POST /aktors.json
  def create
    @aktor = Aktor.new(aktor_params)

    respond_to do |format|
      if @aktor.save
        format.html { redirect_to @aktor, notice: 'Aktor was successfully created.' }
        format.json { render :show, status: :created, location: @aktor }
      else
        format.html { render :new }
        format.json { render json: @aktor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aktors/1
  # PATCH/PUT /aktors/1.json
  def update
    respond_to do |format|
      if @aktor.update(aktor_params)
        format.html { redirect_to @aktor, notice: 'Aktor was successfully updated.' }
        format.json { render :show, status: :ok, location: @aktor }
      else
        format.html { render :edit }
        format.json { render json: @aktor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aktors/1
  # DELETE /aktors/1.json
  def destroy
    @aktor.destroy
    respond_to do |format|
      format.html { redirect_to aktors_url, notice: 'Aktor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aktor
      @aktor = Aktor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aktor_params
      params.require(:aktor).permit(:name, :surname, :film_id)
    end
end
