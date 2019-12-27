class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :trip_id
      t.string :category_id
      t.string :name
      t.boolean :packed
      t.string :user_id

      t.timestamps
    end
  end
end
