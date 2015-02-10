class AirplanebookingsController < ApplicationController
  before_action :set_airplanebooking, only: [:show, :edit, :update, :destroy]

  # GET /airplanebookings
  # GET /airplanebookings.json
  def index
    @airplanebookings = Airplanebooking.all
  end

  # GET /airplanebookings/1
  # GET /airplanebookings/1.json
  def show
  end

  # GET /airplanebookings/new
  def new
    @airplanebooking = Airplanebooking.new
  end

  # GET /airplanebookings/1/edit
  def edit
  end

  # POST /airplanebookings
  # POST /airplanebookings.json
  def create
    @airplanebooking = Airplanebooking.new(airplanebooking_params)

    respond_to do |format|
      if @airplanebooking.save
        format.html { redirect_to @airplanebooking, notice: 'Airplanebooking was successfully created.' }
        format.json { render :show, status: :created, location: @airplanebooking }
      else
        format.html { render :new }
        format.json { render json: @airplanebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airplanebookings/1
  # PATCH/PUT /airplanebookings/1.json
  def update
    respond_to do |format|
      if @airplanebooking.update(airplanebooking_params)
        format.html { redirect_to @airplanebooking, notice: 'Airplanebooking was successfully updated.' }
        format.json { render :show, status: :ok, location: @airplanebooking }
      else
        format.html { render :edit }
        format.json { render json: @airplanebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airplanebookings/1
  # DELETE /airplanebookings/1.json
  def destroy
    @airplanebooking.destroy
    respond_to do |format|
      format.html { redirect_to airplanebookings_url, notice: 'Airplanebooking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airplanebooking
      @airplanebooking = Airplanebooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airplanebooking_params
      params.require(:airplanebooking).permit(:from, :to, :date_of_journey, :return_date, :noOfPassengers)
    end
end
