class CreateHandbooks < ActiveRecord::Migration
  def change
    create_table :handbooks do |t|
      t.string :crm

      t.timestamps
    end
  end
end
