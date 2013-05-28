class CreateAttendants < ActiveRecord::Migration
  def change
    create_table :attendants do |t|
      t.string :sector

      t.timestamps
    end
  end
end
