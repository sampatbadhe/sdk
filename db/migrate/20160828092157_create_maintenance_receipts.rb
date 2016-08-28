class CreateMaintenanceReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenance_receipts do |t|
      t.integer :month
      t.integer :year
      t.references :society, foreign_key: true
      t.timestamps
    end
  end
end
