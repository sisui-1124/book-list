class RenameImgColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :img, :image
  end
end
