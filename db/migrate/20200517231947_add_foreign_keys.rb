class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key(:comments, :users)
    add_foreign_key(:comments, :posts)
    add_foreign_key(:posts, :sub_reddits)
  end
end
