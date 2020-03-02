class CreateTableAgenda < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :subject
      t.datetime :from_datetime
      t.datetime :to_datetime

      t.timestamps
    end
  end
end
