class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :phone_number
      t.string :first_name
      t.string :last_name
      t.references :society, foreign_key: true
      t.boolean :is_secretary

      t.timestamps
    end
  end
end
