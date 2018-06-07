class Work < ActiveRecord::Migration[5.1]
  def change
  	create_table :work do |t|
  		t.string	:name

  		t.timestamps
  	end
  end
end
