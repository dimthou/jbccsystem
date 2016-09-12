class AddImageToJbccs < ActiveRecord::Migration
  def change
    add_column :jbccs, :image, :string
  end
end
