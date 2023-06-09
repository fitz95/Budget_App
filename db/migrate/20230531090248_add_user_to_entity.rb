# frozen_string_literal: true

class AddUserToEntity < ActiveRecord::Migration[7.0]
  def change
    add_reference :entities, :user, index: true, foreign_key: true
  end
end
