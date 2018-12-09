class CreateFrancisCmsSyndications < ActiveRecord::Migration[4.2]
  def up
    create_table :francis_cms_syndications do |t|
      t.text       :url, null: false
      t.text       :name, null: false
      t.references :syndicatable, polymorphic: true
      t.datetime   :created_at
    end
  end

  def down
    drop_table :francis_cms_syndications
  end
end
