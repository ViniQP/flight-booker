class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passenger = Passenger.new
    @flight_id = params[:flight_id]
 
  end

  def create

    @passenger = Passenger.new()
    @passenger.name = params[:booking][:passengers_attributes]['0'][:name]
    @passenger.email = params[:booking][:passengers_attributes]['0'][:email]
    @booking = Booking.new(flight_id: params[:booking][:flight_id])
    unless params[:booking][:passengers_attributes]['0'][:name].blank?
      unless params[:booking][:passengers_attributes]['0'][:email].blank?
        @booking.save
        @passenger.booking_id = @booking.id
      end
    end

    if @passenger.save
      flash[:success] = "Your booking was saved successfully!"
      redirect_to root_path
    else
      flash[:error] = "There was an error"
      redirect_to root_path
    end

  

  end

  private
    def passenger_params
      params.require(:booking).permit(:flight_id, 
        :passengers_attributes => [:name, :email])
    end


end
