class AddGithubSlugToKoan < ActiveRecord::Migration
  def change
    add_column :koans, :github_slug, :string
  end
end
