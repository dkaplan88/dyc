class CreateMlbs < ActiveRecord::Migration
  def change
    create_table :mlbs do |t|
      t.string :start
      t.string :time
      t.string :away
      t.string :home
      t.string :location

      t.timestamps
    end
  end
end
