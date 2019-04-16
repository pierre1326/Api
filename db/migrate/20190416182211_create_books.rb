class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.references :author, foreign_key: true
      t.datetime :publish_date

      t.timestamps
    end
  end
end
