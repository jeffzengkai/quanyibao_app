class CreateRights < ActiveRecord::Migration
  def change
    create_table :rights do |t|
      t.belongs_to :project
      t.string :name,         null: false, default: ""
      t.text :definition
      t.integer :price,       null: false, default: 0
      t.integer :target_num,  null: false, default: 0
      t.integer :current_num, null: false, default: 0
      t.integer :start_time,  null: false, default: 0

      t.timestamps
    end

    add_index :rights, :name, unique: true
  end
end
