class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :phone_number
      t.string :password

      t.timestamps
    end
  end
end
