class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags do |t|
      t.string :name
    end

    create_table :content_objects_tags do |t|
      t.integer :content_object_id
      t.integer :tag_id
    end
  end

  def self.down
    drop_table :content_objects_tags

    drop_table :tags
  end
end
