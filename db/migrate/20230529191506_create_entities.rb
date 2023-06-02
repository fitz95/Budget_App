# frozen_string_literal: true

class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.integer :amount
      t.string :AuthorID

      t.timestamps
    end
  end
end
