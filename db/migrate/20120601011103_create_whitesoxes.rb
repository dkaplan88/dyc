class CreateWhitesoxes < ActiveRecord::Migration
  def change
    create_table :whitesoxes do |t|
      t.string :start
      t.string :time_start
      t.string :subject

      t.timestamps
    end
  end
end
