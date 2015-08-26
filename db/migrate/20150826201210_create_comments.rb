class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :body
      t.string :title
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
