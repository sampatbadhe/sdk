class MaintenanceReceipt < ApplicationRecord
  belongs_to :society

  has_attached_file :receipt
  validates_attachment :receipt,
   content_type: { content_type: ['application/pdf'] }
end
