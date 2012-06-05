class CreateStarts < ActiveRecord::Migration
  def change
    create_table :starts do |t|
      t.string :time_start
      t.string :subject

      t.timestamps
    end
  end
end
