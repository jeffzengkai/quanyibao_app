class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.belongs_to :right
      t.string :identity,        null: false, default: ""
      t.integer :status,         null: false, default: 0
      t.integer :unit_price,     null: false, default: 0
      t.integer :total_price,    null: false, default: 0
      t.integer :purchase_count, null: false, default: 0
      t.integer :purchase_time,  null: false, default: 0
      t.string :address,         null: false, default: ""
      t.string :mobile,          null: false, default: ""

      t.timestamps
    end

    add_index :orders, :identity, unique: true
  end
end
