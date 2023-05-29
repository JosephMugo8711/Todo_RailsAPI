class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.boolean :done, default: false
      t.string :date, default: Time.now, null: false

      t.timestamps
    end
  end
end
