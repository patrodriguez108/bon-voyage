class AddDescriptionToPieces < ActiveRecord::Migration[5.1]
  def change
    add_column :pieces, :description, :text
  end
end
