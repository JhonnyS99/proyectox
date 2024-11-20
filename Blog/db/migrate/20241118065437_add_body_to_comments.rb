class AddBodyToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :body, :text
  end
end
