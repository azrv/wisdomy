class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nick
      t.string :email
      t.string :crypted_password
    end
  end
end
