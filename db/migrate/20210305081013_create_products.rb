class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name, limit: 64
      t.references :category, null: false, foreign_key: true
      t.integer :price
      t.string :description, limit: 256
      t.references :sale_status, null: false, foreign_key: true
      t.references :product_status, null: false, foreign_key: true
      t.datetime :regist_date
      t.bigint :user_id, null: false, foreign_key: true
      t.boolean :delete_flag, null: false

      t.timestamps
    end
  end
end
