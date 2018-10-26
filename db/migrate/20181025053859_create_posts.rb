class CreatePosts < ActiveRecord::Migration[5.2]
  create_table :posts do |t|
     t.string :name
     t.text :title
     t.text :content
     t.timestamps

   end
 end
