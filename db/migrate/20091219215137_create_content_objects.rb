class CreateContentObjects < ActiveRecord::Migration
  def self.up
    create_table :content_objects do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.integer :category_id
      t.string :video_url
      t.string :homepage
     
      t.string  :content_file_name
      t.string  :content_content_type
      t.integer :content_file_size
      t.datetime :content_updated_at

      t.string  :image_file_name
      t.string  :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :content_objects
  end
end
