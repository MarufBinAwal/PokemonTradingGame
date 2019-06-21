class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.string :set_name
      t.string :release_date

      t.timestamps
    end
  end
end
