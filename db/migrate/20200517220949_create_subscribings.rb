class CreateSubscribings < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribings do |t|
      t.references :user, foreign_key: true
      t.references :sub_reddit, foreign_key: true

      t.timestamps
    end
  end
end
