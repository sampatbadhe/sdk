class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.references :member, foreign_key: true
      t.references :society, foreign_key: true
      t.string :title
      t.string :description
      t.integer :status, default: 0, index: true
      t.timestamps
    end
  end
end
