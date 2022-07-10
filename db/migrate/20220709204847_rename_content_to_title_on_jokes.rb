class RenameContentToTitleOnJokes < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :Jokes, :content, :title
  end

  def self.down

  end
end