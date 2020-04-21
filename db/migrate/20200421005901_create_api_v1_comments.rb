class CreateApiV1Comments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :user_id
      t.integer :post_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
