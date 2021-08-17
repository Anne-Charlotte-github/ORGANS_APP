class OrgansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @organs = Organ.all
  end

  def show
    @organ = Organ.find(params[:id])
    @booking = Booking.new
  end
end
