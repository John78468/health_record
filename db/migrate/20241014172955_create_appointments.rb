class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :doctor_name
      t.datetime :date
      t.string :location
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
