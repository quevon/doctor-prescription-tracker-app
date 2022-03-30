class AddColumnDiscount < ActiveRecord::Migration[6.1]
  def change
    add_column :prescription_drugs, :discount, :int
  end
end
