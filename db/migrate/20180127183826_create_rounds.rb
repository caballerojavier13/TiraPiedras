class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.boolean :active
      t.references :player, index: true
      t.string :player1
      t.string :player2
      t.timestamps null: false
    end
  end
end
