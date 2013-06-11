class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.datetime :date

      t.references :doctor
      t.references :attendant
      t.references :patient

      t.timestamps
    end
  end
end
