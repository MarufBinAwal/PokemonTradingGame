class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :move
      t.string :poke_type
      t.string :url
      t.string :url_tiny
      t.integer :number
      t.integer :user_id
      t.integer :deck_id
      t.string :rarity

      t.timestamps
    end
  end
end
