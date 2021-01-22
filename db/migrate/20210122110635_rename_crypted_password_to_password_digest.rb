class RenameCryptedPasswordToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :crypted_password, :password_digest
  end
end
