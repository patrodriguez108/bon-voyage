class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string  :name
      t.integer :art_work_id

      t.timestamps
    end
  end
end
