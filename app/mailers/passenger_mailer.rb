class PassengerMailer < ApplicationMailer
    default from: 'notifications@flightbooking.com'

    def confirmation_email
      @booking = Booking.find(params[:booking_id])
      @url  = 'http://flightbooker.com/login'
      mail(to: @booking.passengers.pluck(:email), subject: 'Booking confirmed')
    end
end
