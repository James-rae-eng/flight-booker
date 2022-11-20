class FlightsController < ApplicationController
  def index
    #nothing needed for search bar, url and models already defined in view
    if params[:flight]
      @flight_results = Flight.where(departure_airport_id: flight_params[:departure_airport_id], 
                                      arrival_airport_id: flight_params[:arrival_airport_id]
                                      )
    end

  end



  private

  def search_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure, :number_of_passengers)
  end

  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure, :number_of_passengers)
  end

end
