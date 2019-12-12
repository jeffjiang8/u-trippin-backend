class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :flight_id
      t.string :user_id

      t.timestamps
    end
  end
end
