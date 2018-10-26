class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.timestamps
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :age, :integer
  end
end
