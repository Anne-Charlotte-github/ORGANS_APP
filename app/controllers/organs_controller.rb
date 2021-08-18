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
    @user_booking = current_user.customer_bookings.last
    organ_rating
    owner_rating
  end

  private

  def organ_rating
    rated_bookings = @organ.bookings.reject { |booking| booking.rating.nil? }
    @ratings = rated_bookings.map(&:rating)
    if @ratings == []
      @rating_organ = 0
    else
      @rating_organ = (@ratings.sum / @ratings.count).round(2)
    end
  end

  def owner_rating
    'toto'
  end
end
