class AddAttachmentReceiptToMaintenanceReceipts < ActiveRecord::Migration
  def self.up
    change_table :maintenance_receipts do |t|
      t.attachment :receipt
    end
  end

  def self.down
    remove_attachment :maintenance_receipts, :receipt
  end
end
