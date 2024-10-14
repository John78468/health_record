class CreatePrescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :prescriptions do |t|
      t.string :medication_name
      t.string :dosage
      t.date :start_date
      t.date :end_date
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
