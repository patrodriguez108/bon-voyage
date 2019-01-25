class CreateArtWorks < ActiveRecord::Migration[5.1]
  def change
  	create_table	:art_works do |t|
  		t.string	:name
  		t.integer	:work_id

  		t.timestamps
  	end
  end
end
