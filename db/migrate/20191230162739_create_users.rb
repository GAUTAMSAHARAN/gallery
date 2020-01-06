class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.integer :phone_no
      t.string :branch
      t.integer :year
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
