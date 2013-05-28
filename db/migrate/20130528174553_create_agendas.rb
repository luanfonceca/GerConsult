class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.datetime :date
      t.string :crm
      t.string :specialty

      t.timestamps
    end
  end
end
