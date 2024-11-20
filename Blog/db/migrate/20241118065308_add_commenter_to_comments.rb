class AddCommenterToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :commenter, :string
  end
end
