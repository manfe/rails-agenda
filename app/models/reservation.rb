class Reservation < ApplicationRecord
  belongs_to :user


  def get_start_at_day
    self.start_at.wday
  end


  def get_start_at_hour
    self.start_at.hour
  end


end
