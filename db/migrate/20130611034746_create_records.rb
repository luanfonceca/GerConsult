class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :doctor
      t.references :patient
      t.text :text

      t.timestamps
    end
    add_index :records, :doctor_id
    add_index :records, :patient_id
  end
end
