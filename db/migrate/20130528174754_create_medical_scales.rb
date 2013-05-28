class CreateMedicalScales < ActiveRecord::Migration
  def change
    create_table :medical_scales do |t|
      t.string :crm
      t.datetime :date

      t.timestamps
    end
  end
end
