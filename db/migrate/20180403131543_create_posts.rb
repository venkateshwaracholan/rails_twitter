class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :userno

      t.timestamps
    end
    add_index :posts, :userno
    
  end
end
