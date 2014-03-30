class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :number
      t.text :msg
      t.boolean :send

      t.timestamps
    end
  end
end
