class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(event_params)

    if @flight.save
      redirect_to @flight
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @flight = Flight.find(params[:id])
  end

  def update
    @flight = Flight.find(params[:id])

    if @flight.update(event_params)
      redirect_to @flight
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @flight = Flight.find(params[:id])
  end

  def event_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure, :duration)
  end
end
