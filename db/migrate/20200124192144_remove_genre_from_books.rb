class RemoveGenreFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :genre, :string
  end
end
