class AddEmailToJbccs < ActiveRecord::Migration
  def change
    add_column :jbccs, :email, :string
  end
end
