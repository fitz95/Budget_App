class AddUserToGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, index: true, foreign_key: true
  end
end
