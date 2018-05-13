class AddIndexToComments < ActiveRecord::Migration[5.2]
  def change
    add_index :comments, :commentable_id
    add_index :comments, :commentable_type
  end
end
