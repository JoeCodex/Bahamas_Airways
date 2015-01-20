


class Seat < ActiveRecord::Base
  belongs_to :flight
  # validate :baggage_allowance_not_exceeded,
  #   :flight_capacity_not_exceeded

  # def baggage_allowance_not_exceeded
  #   if baggage > flight.baggage_allowance
  #     errors.add(:baggage, "You have too much baggage")
  #   end
  # end
  
  # def flight_capacity_not_exceeded
  #   if flight.seats.size >= flight.capacity
  #     errors[:base]<< "The flight is fully booked"
  #   end
  # end

    def seat_params
      params.require(:seat).permit(:baggage, :flight_id, :name)
    end
end