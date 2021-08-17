class OrgansController < ApplicationController
  def index
    @organs = Organ.all
  end

  def show
    @organ = Organ.find(params[:id])
    @owner = User.find(@organ.owner_id)
    @booking = Booking.new
  end
end
