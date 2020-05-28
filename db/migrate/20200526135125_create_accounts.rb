class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :number, null: false, default: '';
      t.string :name, null: false, default: '';
      t.string :cost_center, null: false, default: '';
      t.string :work_front, null: false, default: '';
      t.string :phone, null: false, default: '';

      t.timestamps
    end
  end
end
