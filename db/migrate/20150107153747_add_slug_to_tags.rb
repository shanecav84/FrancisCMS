class AddSlugToTags < ActiveRecord::Migration[4.2]
  def up
    add_column :tags, :slug, :text
  end

  def down
    remove_column :tags, :slug
  end
end
