class RemovedatecreatedNameFromTableDrugs < ActiveRecord::Migration[6.1]
  def change
    remove_column :drugs, :date_created
  end
end
