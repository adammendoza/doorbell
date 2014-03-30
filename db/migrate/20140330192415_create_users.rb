class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :number
      t.text :msg
      t.boolean :contact, :default=>false

      t.timestamps
    end
  end
end
