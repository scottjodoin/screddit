class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.string :body
      t.integer :upvotes
      t.integer :downvotes
      t.boolean :deleted
      t.timestamp :edit_timestamp

      t.timestamps
    end
  end
end
