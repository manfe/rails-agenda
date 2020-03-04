class AgendaController < ApplicationController
  layout "agenda"

  before_action :authenticate_user!

  def index
    @reservations = Reservation.where('start_at BETWEEN ? AND ?', Time.now.in_time_zone.beginning_of_week, Time.now.in_time_zone.end_of_week)
  end

end
