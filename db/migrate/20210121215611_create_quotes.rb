class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :text
      t.integer :author_id
    end
  end
end
