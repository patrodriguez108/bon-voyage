class CreateWebWorks < ActiveRecord::Migration[5.1]
  def change
  	create_table :web_works do |t|
  		t.string	:name
  		t.integer	:work_id

  		t.timestamps
  	end
  end
end
