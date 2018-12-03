class AddImgToPieces < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :pieces, :img
  end

  def self.down
    remove_attachment :pieces, :img
  end
end
