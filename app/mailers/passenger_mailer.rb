class PassengerMailer < ApplicationMailer
  default from: "messages@example.com"

  def booking_email
    @passenger = params[:passenger]
    @passenger_flight = @passenger.booking.flight
    mail(to: @passenger.email, subject: "Your flight was booked")
  end
end
