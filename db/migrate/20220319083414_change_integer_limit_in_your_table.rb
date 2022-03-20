class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[6.1]
  def change
    change_column :doctors, :doctor_num, :bigint
  end
end
