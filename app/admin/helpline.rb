ActiveAdmin.register Helpline do

permit_params :name, :address, :phone_number, :mobile_number,
  :helpline_category_id, :region_id, :email_address
end
