class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :crm
      t.string :specialty

      t.timestamps
    end
  end
end
