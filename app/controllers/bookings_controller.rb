class BookingsController < ApplicationController
  def create
    @organ = Organ.find(params[:organ_id])
    @booking = Booking.new(params_booking)
    @booking.organ_id = params[:organ_id]
    @booking.customer_id = current_user.id

    if @booking.save
      redirect_to organ_path(@organ)
    else
      render("organs/show")
    end
  end

  private

  def params_booking
    params.require(:booking).permit(:renting_at)
  end
end
