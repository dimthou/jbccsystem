class AddAccountNumberToJbccs < ActiveRecord::Migration
  def change
    add_column :jbccs, :account_number, :integer
  end
end
