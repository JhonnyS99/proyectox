class AddArticleToComments < ActiveRecord::Migration[7.2]
  def change
    add_reference :comments, :article, null: false, foreign_key: true
  end
end
