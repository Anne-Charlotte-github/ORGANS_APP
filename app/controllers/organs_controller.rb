class OrgansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    organ_type = params[:organ_type]
    if organ_type.present?
      @organs = Organ.where(organ_type: organ_type)
    else
      @organs = Organ.all
    end
  end

  def show
    @organ = Organ.find(params[:id])
    @booking = Booking.new
  end
end
