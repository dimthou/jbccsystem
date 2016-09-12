class AddTelToJbccs < ActiveRecord::Migration
  def change
    add_column :jbccs, :tel, :integer
  end
end
