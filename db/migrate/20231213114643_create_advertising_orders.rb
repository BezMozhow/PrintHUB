class CreateAdvertisingOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :advertising_orders do |t|
      t.string :ad_topic, null: false
      t.integer :user_id
      t.float :ad_width, null: false
      t.float :ad_height, null: false
      t.text :comment
      t.string :ad_image
      t.string :order_status, default: "Опрацьовується"
      t.float :price
      t.integer :number_of_inserts, null: false
      t.integer :number_of_inserted, default: 0

      t.timestamps
    end
  end
end
