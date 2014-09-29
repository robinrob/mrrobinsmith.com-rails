class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :hashed_password

      t.timestamps

      t.index [:email], :unique => true
    end

  end
end
