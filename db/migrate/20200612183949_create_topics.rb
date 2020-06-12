class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :content
      t.integer :likes
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
