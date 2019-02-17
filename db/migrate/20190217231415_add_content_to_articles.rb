class AddContentToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :content, :string
  end
end
