class AddArticleReferncesToBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :article, null: false, foreign_key: true
  end
end
