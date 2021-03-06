class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :file_size
      t.string :ext
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
