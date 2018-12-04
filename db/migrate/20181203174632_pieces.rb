class Pieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string  :name
      t.integer :medium_id

      t.timestamps
    end
  end
end
