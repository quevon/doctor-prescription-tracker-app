class ChangeDataTypesDiscount < ActiveRecord::Migration[6.1]
  def change
    change_column :prescription_drugs, :discount, :float
  end
end
