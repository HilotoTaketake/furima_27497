class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,            null: false
      t.text :explain,           null: false
      t.integer :content,         null: false, default: 0
      t.integer :category_id,        null: false
      t.integer :how_pay,         null: false, default: 0
      t.integer :prefecture_id,      null: false
      t.integer :how_long,        null: false, default: 0
      t.integer :price,          null: false
      t.references :user,        foreign_key: true
      t.timestamps
    end
  end
end
