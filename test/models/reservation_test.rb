require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "insert invalid reservation" do
    user = User.create(email: "aaa@aaa.com", password: "123456")
    reservation = Reservation.new
    reservation.user = user

    assert_not reservation.save
  end


  test "insert valid reservation" do
    # TODO: usar fixtures
    user = User.create(email: "aaa@aaa.com", password: "123456")
    reservation = Reservation.new
    reservation.user = user
    reservation.start_at = Time.now

    assert reservation.save
  end

  test "get_start_at_day should return correct day and hour from a date" do
    user = User.create(email: "aaa@aaa.com", password: "123456")
    reservation = Reservation.new
    reservation.user = user
    
    # 05/05 é em uma terça, dia 2 da semana.
    reservation.start_at = "2020-05-05 16:00:00".to_datetime
    reservation.save

    assert_equal reservation.get_start_at_day, 2
    assert_equal reservation.get_start_at_hour, 16

  end
end
