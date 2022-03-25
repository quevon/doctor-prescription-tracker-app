class AddColumnNotesPrescriptionDrugs < ActiveRecord::Migration[6.1]
  def change
    add_column :prescription_drugs, :note, :string, limit: nil
  end
end
