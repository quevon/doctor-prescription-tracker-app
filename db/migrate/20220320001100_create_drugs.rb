class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.string :drug_name
      t.bigint :drug_price
      t.date :date_created
      t.date :date_expire

      t.timestamps
    end
  end
end
