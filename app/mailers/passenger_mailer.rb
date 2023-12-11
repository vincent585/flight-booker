class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @booking = params[:booking]
    @url = 'http://example.com/confirmation'
    mail(to: @booking.passengers.first.email, subject: 'Booking Confirmation')
  end
end
