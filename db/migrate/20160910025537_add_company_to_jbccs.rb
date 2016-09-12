class AddCompanyToJbccs < ActiveRecord::Migration
  def change
    add_column :jbccs, :company, :string
  end
end
