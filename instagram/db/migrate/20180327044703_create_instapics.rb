class CreateInstapics < ActiveRecord::Migration[5.1]
  def change
    create_table :instapics do |t|
      t.string :picture
      t.string :post
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
