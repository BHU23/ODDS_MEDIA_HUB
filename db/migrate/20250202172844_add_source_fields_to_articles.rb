class AddSourceFieldsToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :source_url, :string
    add_column :articles, :published_at, :datetime
  end
end
