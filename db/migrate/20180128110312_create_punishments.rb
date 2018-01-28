class CreatePunishments < ActiveRecord::Migration
  def change
    create_table :punishments do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
