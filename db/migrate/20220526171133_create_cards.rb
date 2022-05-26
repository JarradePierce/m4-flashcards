class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :body
      t.string :answer1
      t.string :answer2
      t.string :answer3

      t.timestamps
    end
  end
end
