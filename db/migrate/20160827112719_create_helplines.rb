class CreateHelplines < ActiveRecord::Migration[5.0]
  def change
    create_table :helplines do |t|
      t.string :name
      t.text :address
      t.integer :phone_number
      t.integer :mobile_number
      t.references :helpline_category, foreign_key: true
      t.references :region, foreign_key: true
      t.string :email_address
      t.timestamps
    end
  end
end
