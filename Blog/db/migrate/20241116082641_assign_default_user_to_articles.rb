class AssignDefaultUserToArticles < ActiveRecord::Migration[7.2]
  def up
    default_user = User.first || User.create(email: "default@example.com", password: "password", password_confirmation: "password")
    Article.where(user_id: nil).update_all(user_id: default_user.id)
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end