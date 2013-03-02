class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :deDos
      t.integer :deSiete

      t.timestamps
    end
  end
end
