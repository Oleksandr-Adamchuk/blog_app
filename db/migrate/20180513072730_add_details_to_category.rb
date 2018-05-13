class AddDetailsToCategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :commentable, polymorphic: true
  end
end
