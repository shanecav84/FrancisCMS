class CreateFrancisCmsPhotos < ActiveRecord::Migration[4.2]
  def up
    create_table :francis_cms_photos do |t|
      t.text     :photo, null: false
      t.text     :body
      t.datetime :published_at

      t.timestamps null: false
    end
  end

  def down
    drop_table :francis_cms_photos
  end
end
