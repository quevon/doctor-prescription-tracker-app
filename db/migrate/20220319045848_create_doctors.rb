class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :doctor_name
      t.integer :doctor_num

      t.timestamps
    end
  end
end
