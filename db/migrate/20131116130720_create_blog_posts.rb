class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.date :date
      t.boolean :published
      t.string :author

      t.timestamps
    end
  end
end
