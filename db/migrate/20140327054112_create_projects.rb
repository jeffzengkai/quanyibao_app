class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :publisher
      t.belongs_to :administrator
      t.string :name,           null: false, default: ""
      t.string :purpose,        null: false, default: ""
      t.integer :target_fund,   null: false, default: 0
      t.integer :current_fund,  null: false, default: 0
      t.integer :start_time,    null: false, default: 0
      t.integer :end_time,      null: false, default: 0    
      t.integer :status,        null: false, default: 0
      t.string :province,       null: false, default: ""
      t.string :county,         null: false, default: ""
      t.string :detail_address, null: false, default: ""
      t.string :post_code,      null: false, default: ""
      t.string :service_area,   null: false, default: ""
      t.text :detail
      t.text :pictures
      t.integer :purchase_num,  null: false, default: 0
      t.integer :follow_num,    null: false, default: 0
      t.integer :scan_num,      null: false, default: 0

      t.timestamps
    end

    add_index :projects, :name, unique: true
  end
end
