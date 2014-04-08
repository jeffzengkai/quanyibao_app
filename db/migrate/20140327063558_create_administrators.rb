class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :name,        null: false, default: ""
      t.string :department,  null: false, default: ""
      t.string :mobile,      null: false, default: ""

      t.timestamps
    end

    add_index :administrators, :name, unique: false
  end
end
