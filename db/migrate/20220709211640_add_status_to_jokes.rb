class AddStatusToJokes < ActiveRecord::Migration[7.0]
  def change
    add_column :jokes, :status, :string
  end
end
