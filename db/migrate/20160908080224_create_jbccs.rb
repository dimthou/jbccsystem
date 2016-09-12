class CreateJbccs < ActiveRecord::Migration
  def change
    create_table :jbccs do |t|
      t.string :name
      t.string :kanji
      t.string :sex
      t.string :introductor
      t.date :create_date
      t.string :support
      t.string :service
      t.string :address
      t.string :remark

      t.timestamps null: false
    end
  end
end
