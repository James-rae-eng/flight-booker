class PassengerMailer < ApplicationMailer
    default from: 'notifications@flightbooking.com'

    def confirmation_email
      @passenger = params[:passenger]
      @url  = 'http://flightbooker.com/login'
      mail(to: @passenger.email, subject: 'Booking confirmed')
    end
end
