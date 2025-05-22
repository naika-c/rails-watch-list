class DropBookmarks < ActiveRecord::Migration[7.1]
  def change
    drop_table :bookmarks
  end
end
