class BookingsController < ApplicationController
  def create
    @organ = Organ.find(params[:organ_id])
    @booking = Booking.new(params_booking)
    @booking.organ = @organ
    @booking.customer = current_user
    save_booking(@organ, @booking)
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

  def save_booking(organ, booking)
    if (organ.owner_id != current_user.id) && booking.save
      flash[:notice] = "Félicitation! Votre corps vous dit merci 👍"
      redirect_to user_path(current_user.id)
    else
      redirect_to organ_path(params[:organ_id])
      flash[:alert] = "Organe non disponible, saisissez une autre date"
    end
  end
end
