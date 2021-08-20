class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @organs = @user.owner_organs
    @bookings = @user.customer_bookings
  end
end
