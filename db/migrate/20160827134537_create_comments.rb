class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
      t.references :member, foreign_key: true
      t.text :content
      t.timestamps
    end
  end
end
