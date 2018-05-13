class RemoveColumnsFromCategoriesAndPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :commentable_type
    remove_column :categories, :commentable_id
    remove_column :posts, :commentable_type
    remove_column :posts, :commentable_id
  end
end
