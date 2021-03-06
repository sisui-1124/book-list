class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name,  limit: 30, null: false
      t.text :description
      t.text :image

      t.timestamps
      t.index :name, unique: true
    end
  end
end
