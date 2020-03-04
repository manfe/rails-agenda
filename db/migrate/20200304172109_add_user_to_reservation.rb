class AddUserToReservation < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :user, index: true
  end
end
