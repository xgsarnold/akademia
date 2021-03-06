class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.references :person, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_index :users, :email
  end
end
