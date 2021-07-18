class AddImgToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :image
  end
end
