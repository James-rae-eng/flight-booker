class BookingsController < ApplicationController
    
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
        @number_of_passengers = params[:number_of_passengers].to_i
        @number_of_passengers.times { @booking.passengers.build }
    end
    
    def create
        @booking = Booking.new(booking_params)
        
        if @booking.save
            redirect_to @booking
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private

    def booking_params
        params.require(:booking).permit(:flight_id, :number_of_passengers, passengers_attributes: [:name, :email])
    end
    
end
