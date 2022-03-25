class RemovedatExpirydNameFromTableDrugs < ActiveRecord::Migration[6.1]
  def change
    remove_column :drugs, :date_expire
  end
end
