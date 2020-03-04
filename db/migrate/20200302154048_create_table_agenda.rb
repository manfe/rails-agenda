class CreateTableAgenda < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :subject
      t.datetime :start_at

      t.timestamps
    end
  end
end
