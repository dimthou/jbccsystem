class AddAccountNameToJbccs < ActiveRecord::Migration
  def change
    add_column :jbccs, :account_name, :string
  end
end
