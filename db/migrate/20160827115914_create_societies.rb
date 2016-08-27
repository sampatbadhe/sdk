class CreateSocieties < ActiveRecord::Migration[5.0]
  def change
    create_table :societies do |t|
      t.integer :registration_number
      t.string :name
      t.string :address
      t.integer :region_id

      t.timestamps
    end
  end
end
