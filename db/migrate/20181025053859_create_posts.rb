class CreatePosts < ActiveRecord::Migration[5.2]
  def change


      t.timestamps
    add_column :posts, :name, :string, null: false, default: ""
    add_column :posts, :age, :integer
    end
  end
end
