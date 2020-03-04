class ReservationsController < ApplicationController


  def index
  end


  def create
    @hour = params[:hour]
    @day = params[:day]

    @reservation = Reservation.new
    @reservation.start_at = create_datetime(@day, @hour)
    @reservation.user = current_user
    @reservation.save

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    unless @reservation.nil?
      @day = @reservation.get_start_at_day
      @hour = @reservation.get_start_at_hour

      Reservation.delete(params[:id])

      respond_to do |format|
        format.js
      end
    end

  end



  private
  def create_datetime(day, hour)
    week_start_at = Time.now.in_time_zone.beginning_of_week

    start_at_day = week_start_at + (day.to_i - 1).days
    start_at = start_at_day + hour.to_i.hours
  end

end
