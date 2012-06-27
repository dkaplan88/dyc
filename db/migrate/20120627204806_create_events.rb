class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :headliner
      t.string :image
      t.string :full_lineup
      t.string :venue
      t.string :location
      t.string :date
      t.string :tickets

      t.timestamps
    end
  end
end
