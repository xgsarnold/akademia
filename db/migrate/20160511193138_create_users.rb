class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.references :person_id, polymorphic: true, index: true
      t.string :person_type

      t.timestamps null: false
    end
    add_index :users, :email
  end
end
