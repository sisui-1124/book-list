class ChangeBooksNameNotNull < ActiveRecord::Migration[6.1]
  def up
    change_column :books, :name, :string, limit: 30
  end
  def down
    change_column :books, :name, :string
  end
end
