class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :likesCount
      t.integer :topic_id
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
