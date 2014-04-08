class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :brand_name,        null: false, default: ""
      t.string :brand_logo,        null: false, default: ""
      t.text :description
      t.string :company_name,      null: false, default: ""
      t.string :owner_name,        null: false, default: ""
      t.string :contacts,          null: false, default: ""
      t.string :contacts_tel,      null: false, default: ""

      t.timestamps
    end

    add_index :publishers, :brand_name, unique: true
  end
end
