class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name, limit: 64
      t.bigint :category_id, null: false, foreign_key: true
      t.integer :price
      t.string :description, limit: 256
      t.bigint :sale_status_id, null: false, foreign_key: true
      t.bigint :product_status_id, null: false, foreign_key: true
      t.timestamp :regist_date
      t.bigint :user_id, null: false, foreign_key: true
      t.column :delete_flag, "char(1)"

      t.timestamps
    end
  end
end
