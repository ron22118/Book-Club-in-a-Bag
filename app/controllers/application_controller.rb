class ApplicationController < ActionController::Base
  protect_from_forgery
          private
        def current_reservation
                Reservation.find(session[:reservation_id])
        rescue ActiveRecord::RecordNotFound
                reservation = Reservation.create
                session[:reservation_id] = reservation.id
                reservation
        end
end
