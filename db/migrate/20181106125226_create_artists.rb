class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.integer :lp_id
      t.timestamps null: false
    end
    add_index :artists, :lp_id
  end
end
