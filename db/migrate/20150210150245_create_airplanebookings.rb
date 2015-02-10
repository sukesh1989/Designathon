class CreateAirplanebookings < ActiveRecord::Migration
  def change
    create_table :airplanebookings do |t|
      t.string :from
      t.string :to
      t.date :date_of_journey
      t.date :return_date
      t.integer :noOfPassengers

      t.timestamps null: false
    end
  end
end
