class MedProfilesController < ApplicationController
  before_action :set_med_profile, only: [:show, :edit, :update, :destroy]
  before_action :set_customer

  def set_customer
    @customer = Customer.find_by_id(params[:customer_id])
  end 

  # GET /med_profiles
  # GET /med_profiles.json
  def index
    @med_profiles = MedProfile.all
  end

  # GET /med_profiles/1
  # GET /med_profiles/1.json
  def show
  end

  # GET /med_profiles/new
  def new
    @med_profile = MedProfile.new
  end

  # GET /med_profiles/1/edit
  def edit
  end

  # POST /med_profiles
  # POST /med_profiles.json
  def create
    @med_profile = MedProfile.new(med_profile_params)

    respond_to do |format|
      if @med_profile.save
        format.html { redirect_to customer_med_profiles_path(@med_profile.customer_id), notice: 'Med profile was successfully created.' }
        format.json { render :show, status: :created, location: customer_med_profiles_path(@med_profile.customer_id) }
      else
        format.html { render :new }
        format.json { render json: @med_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_profiles/1
  # PATCH/PUT /med_profiles/1.json
  def update
    respond_to do |format|
      if @med_profile.update(med_profile_params)
        format.html { redirect_to customer_med_profiles_path(@med_profile.customer_id), notice: 'Med profile was successfully updated.' }
        format.json { render :show, status: :ok, location: customer_med_profiles_path(@med_profile.customer_id) }
      else
        format.html { render :edit }
        format.json { render json: @med_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_profiles/1
  # DELETE /med_profiles/1.json
  def destroy
    @med_profile.destroy
    respond_to do |format|
      format.html { redirect_to customer_med_profiles_path(@med_profile.customer_id), notice: 'Med profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med_profile
      @med_profile = MedProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def med_profile_params
      params.require(:med_profile).permit(:condition, :start_date, :customer_id)
    end
end
