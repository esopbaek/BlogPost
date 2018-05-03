class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.string :email

      t.timestamps
    end
  end
end
