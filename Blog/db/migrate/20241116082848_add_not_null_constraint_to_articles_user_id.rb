class AddNotNullConstraintToArticlesUserId < ActiveRecord::Migration[7.2]
  def change
    change_column_null :articles, :user_id, false
  end
end
