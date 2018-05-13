class AddDetailsToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :commentable, polymorphic: true
  end
end
