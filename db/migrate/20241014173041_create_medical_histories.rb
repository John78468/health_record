class CreateMedicalHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_histories do |t|
      t.string :title
      t.text :description
      t.date :event_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
