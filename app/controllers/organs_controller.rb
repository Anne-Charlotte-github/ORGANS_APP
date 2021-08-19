class OrgansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @organs = Organ.where.not(owner: current_user)
    if params[:organ_type].present?
      @organs = @organs.where(organ_type: params[:organ_type])
    end
    if params[:city].present?
      @organs = @organs.where(city: params[:city])
    end
    if params[:date].present?
      # Could be refacto with outer join
      @organs = @organs.select do |organ|
        !organ.bookings.map(&:renting_at).include?(Date.parse(params[:date]))
      end
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
