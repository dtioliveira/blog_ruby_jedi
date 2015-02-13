class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :admin, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :admins
  end
end
