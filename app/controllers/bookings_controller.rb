class BookingsController < ApplicationController
  def create
    @organ = Organ.find(params[:organ_id])
    @booking = Booking.new(params_booking)
    @booking.organ_id = @organ.id
    @booking.customer_id = current_user.id

    if (@organ.owner_id != current_user.id) && @booking.save
      redirect_to user_path(current_user.id)
    else
      render("organs/show")
    end
  end

  def update
    booking = Booking.find(params[:id])
    booking.update(params_booking)
    redirect_to organ_path(params[:organ_id])
  end

  private

  def params_booking
    params.require(:booking).permit(:rating, :renting_at)
  end
end
