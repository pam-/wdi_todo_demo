class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :body
      t.string :date
      t.timestamps
    end
  end
end
