class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :carrier
      t.string :year
      t.string :month
      t.string :day
      t.string :flight_id
      t.string :user_id

      t.timestamps
    end
  end
end
