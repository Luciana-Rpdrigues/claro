class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :number
      t.string :name
      t.string :cost_center
      t.string :work_front
      t.string :phone

      t.timestamps
    end
  end
end
