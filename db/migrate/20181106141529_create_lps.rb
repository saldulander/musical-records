class CreateLps < ActiveRecord::Migration
  def change
    create_table :lps do |t|
      t.string :name
      t.text :description
      t.integer :artist_id
      t.timestamps null: false
    end
    
    add_index :lps, :artist_id
  end
end
