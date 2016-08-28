# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
%w(Plumber Electrician Ambulance Doctor).each do |category_name|
  HelplineCategory.where(name: category_name).first_or_create
end

(1..3).each do |number|
  Region.where(name: "region #{number}").first_or_create
end

(1..3).each do |number|
  Helpline.where(region_id: number,
    helpline_category_id: HelplineCategory.where(name: "Plumber").first.id,
    name: "Karan Valecha",
    address: "Ulhasnagar",
    phone_number: "1234567890",
    mobile_number: "1234567890",
    email_address: "karan.valecha@kiprosh.com").first_or_create

  Helpline.where(region_id: number,
    helpline_category_id: HelplineCategory.where(name: "Electrician").first.id,
    name: "Rohan Pujari",
    address: "Ghatkopar",
    phone_number: "1234567890",
    mobile_number: "1234567890",
    email_address: "rohan.pujari@kiprosh.com").first_or_create

  Helpline.where(region_id: number,
    helpline_category_id: HelplineCategory.where(name: "Ambulance").first.id,
    name: "Punit Jain",
    address: "Andheri",
    phone_number: "1234567890",
    mobile_number: "1234567890",
    email_address: "punit.jain@kiprosh.com").first_or_create

  Helpline.where(region_id: number,
    helpline_category_id: HelplineCategory.where(name: "Doctor").first.id,
    name: "Sagar Pathak",
    address: "Sakinaka",
    phone_number: "1234567890",
    mobile_number: "1234567890",
    email_address: "sagar.pathak@kiprosh.com").first_or_create
end

(1..3).each do |number|
  Society.where(registration_number: "SSN - #{number * 0}",
    region_id: number,
    name: "Society #{number}",
    address: "Andheri").first_or_create

  Society.where(registration_number: "SSN - #{number * 1}",
    region_id: number,
    name: "Society #{number}",
    address: "Ghatkopar").first_or_create

  Society.where(registration_number: "SSN - #{number * 2}",
    region_id: number,
    name: "Society #{number}",
    address: "Sakinaka").first_or_create

  Society.where(registration_number: "SSN - #{number * 3}",
    region_id: number,
    name: "Society #{number}",
    address: "Ulhasnagar").first_or_create
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
