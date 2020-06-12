class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :zip
      t.string :picture
      t.integer :group_id

      t.timestamps
    end
  end
end
