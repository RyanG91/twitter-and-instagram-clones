class AddCaptionToInstapics < ActiveRecord::Migration[5.1]
  def change
    add_column :instapics, :caption, :text
  end
end
