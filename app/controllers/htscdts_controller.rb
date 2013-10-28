class HtscdtsController < ApplicationController
  before_action :set_htscdt, only: [:show, :edit, :update, :destroy]

  # GET /htscdts
  # GET /htscdts.json
  def index
    @htscdts = Htscdt.all
  end

  # GET /htscdts/1
  # GET /htscdts/1.json
  def show
  end

  # GET /htscdts/new
  def new
    @htscdt = Htscdt.new
  end

  # GET /htscdts/1/edit
  def edit
  end

  # POST /htscdts
  # POST /htscdts.json
  def create
    @htscdt = Htscdt.new(htscdt_params)

    respond_to do |format|
      if @htscdt.save
        format.html { redirect_to @htscdt, notice: 'Htscdt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @htscdt }
      else
        format.html { render action: 'new' }
        format.json { render json: @htscdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /htscdts/1
  # PATCH/PUT /htscdts/1.json
  def update
    respond_to do |format|
      if @htscdt.update(htscdt_params)
        format.html { redirect_to @htscdt, notice: 'Htscdt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @htscdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /htscdts/1
  # DELETE /htscdts/1.json
  def destroy
    @htscdt.destroy
    respond_to do |format|
      format.html { redirect_to htscdts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_htscdt
      @htscdt = Htscdt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def htscdt_params
      params.require(:htscdt).permit(:htsus, :date, :author, :verified_by, :inv_description, :gen_eng_description, :gen_esp_description, :early_triggers, :legal_authority, :comments, :confidence, :image_url)
    end
end
