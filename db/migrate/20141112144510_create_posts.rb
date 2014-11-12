class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :uid

      t.timestamps
    end
    add_index :posts, :uid, unique: true
  end
end
