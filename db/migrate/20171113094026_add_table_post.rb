class AddTablePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :created_at
      t.integer :user_id
      t.integer :category_id
    end
  end
end
