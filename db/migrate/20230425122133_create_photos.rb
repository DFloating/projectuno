class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :image 
      t.text :caption
      t.text :date
    end
  end
end
