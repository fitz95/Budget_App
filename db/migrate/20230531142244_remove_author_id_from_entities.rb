# frozen_string_literal: true

class RemoveAuthorIdFromEntities < ActiveRecord::Migration[7.0]
  def change
    remove_column :entities, :AuthorID, :string
  end
end
