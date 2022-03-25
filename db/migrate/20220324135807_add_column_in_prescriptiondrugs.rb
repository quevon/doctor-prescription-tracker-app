class AddColumnInPrescriptiondrugs < ActiveRecord::Migration[6.1]
  def change
    add_column :prescription_drugs, :quantity, :int
  end
end
