class AlergiesController < ApplicationController
  before_action :set_alergy, only: [:show, :edit, :update, :destroy]
  before_action :set_customer

  def set_customer
    @customer = Customer.find_by_id(params[:customer_id])
  end 

  # GET /alergies
  # GET /alergies.json
  def index
    @alergies = Alergy.all
  end

  # GET /alergies/1
  # GET /alergies/1.json
  def show
  end

  # GET /alergies/new
  def new
    @alergy = Alergy.new
  end

  # GET /alergies/1/edit
  def edit
  end

  # POST /alergies
  # POST /alergies.json
  def create
 
    @alergy = Alergy.new(alergy_params)
    
    respond_to do |format|
      if @alergy.save
        format.html { redirect_to customer_alergies_path(@alergy.customer_id), notice: 'Alergy was successfully created.' }
        format.json { render :show, status: :created, location: customer_alergies_path(@alergy.customer_id)}
      else
        format.html { render :new }
        format.json { render json: @alergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alergies/1
  # PATCH/PUT /alergies/1.json
  def update
    respond_to do |format|
      if @alergy.update(alergy_params)
        format.html { redirect_to customer_alergies_path(@alergy.customer_id), notice: 'Alergy was successfully updated.' }
        format.json { render :show, status: :ok, location: customer_alergies_path(@alergy.customer_id) }
      else
        format.html { render :edit }
        format.json { render json: @alergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alergies/1
  # DELETE /alergies/1.json
  def destroy
    @alergy.destroy
    respond_to do |format|
      format.html { redirect_to customer_alergies_path(@alergy.customer_id), notice: 'Alergy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alergy
      @alergy = Alergy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alergy_params
      params.require(:alergy).permit(:alergy_name, :start_date, :customer_id)
    end

end
