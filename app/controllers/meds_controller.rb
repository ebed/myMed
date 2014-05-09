class MedsController < ApplicationController
  before_action :set_med, only: [:show, :edit, :update, :destroy]
  before_action :set_customer

  def set_customer
    @customer = Customer.find_by_id(params[:customer_id])
  end 

  # GET /meds
  # GET /meds.json
  def index
    @meds = Med.all
  end

  # GET /meds/1
  # GET /meds/1.json
  def show
  end

  # GET /meds/new
  def new
    @med = Med.new
  end

  # GET /meds/1/edit
  def edit
  end

  # POST /meds
  # POST /meds.json
  def create
    @med = Med.new(med_params)

    respond_to do |format|
      if @med.save
        format.html { redirect_to customer_meds_path(@med.customer_id), notice: 'Med was successfully created.' }
        format.json { render :show, status: :created, location: customer_meds_path(@med.customer_id) }
      else
        format.html { render :new }
        format.json { render json: @med.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meds/1
  # PATCH/PUT /meds/1.json
  def update
    respond_to do |format|
      if @med.update(med_params)
        format.html { redirect_to customer_meds_path(@med.customer_id), notice: 'Med was successfully updated.' }
        format.json { render :show, status: :ok, location: customer_meds_path(@med.customer_id) }
      else
        format.html { render :edit }
        format.json { render json: @med.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meds/1
  # DELETE /meds/1.json
  def destroy
    @med.destroy
    respond_to do |format|
      format.html { redirect_to customer_meds_path(@med.customer_id), notice: 'Med was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med
      @med = Med.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def med_params
      params.require(:med).permit(:med_name, :dosage, :amount, :start_date, :customer_id)
    end
end
