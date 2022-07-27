class BookingsController < ApplicationController
    before_action :fetch_user
    before_action :check_for_login

    def index
        @booking = Booking.all
    end

    def new 
        @booking = Booking.new 
    end

    def create 
        @booking = Booking.new booking_params
        if @booking
            @booking.save
            redirect_to @booking
        else 
            render :new
        end
    end

    def edit
        @booking = Booking.find params[:id]
    end

    def show
        # Grab the id of the booking  and access the trainer_id stored within that booking or 
        # rather the 
        @booking = Booking.find params[:id]
    end

    def destroy
        session[:booking_id] = nil
        redirect_to bookings_path # Maybe redirect this to The bo
    end

    private
    def booking_params 
        params.require(:booking).permit(:location, :user_id, :session_id, :datetime)
    end

end
