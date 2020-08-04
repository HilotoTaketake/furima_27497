class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :postal,        null: false
      t.integer  :japan_id,         null: false
      t.string  :city,          null: false
      t.string  :town,          null: false
      t.string  :building,      null: true
      t.bigint :phone_number,  null: false
      t.references :item,       foreign_key: true
      t.timestamps
    end
  end
end
