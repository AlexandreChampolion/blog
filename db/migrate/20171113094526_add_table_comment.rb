class AddTableComment < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :email
      t.string :pseudo
      t.text :content
      t.datetime :created_at
      t.integer :posts_id
    end
  end
end
