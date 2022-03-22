class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.date :prescription_date
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
