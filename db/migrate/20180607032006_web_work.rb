class WebWork < ActiveRecord::Migration[5.1]
  def change
  	create_table :web_work do |t|
  		t.string	:name
  		t.integer	:work_id

  		t.timestamps
  	end
  end
end
