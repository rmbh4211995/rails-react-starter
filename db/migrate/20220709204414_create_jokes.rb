class CreateJokes < ActiveRecord::Migration[7.0]
  def change
    create_table :jokes do |t|
      t.string :author
      t.text :content
      t.text :description

      t.timestamps
    end
  end
end
