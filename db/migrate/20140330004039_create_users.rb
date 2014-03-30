class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :number
      t.text :msg

      t.timestamps
    end
  end
end
