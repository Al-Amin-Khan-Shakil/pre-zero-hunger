class CreatePost < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
