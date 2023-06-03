class GroupEntity < ApplicationRecord
  belongs_to :group
  belongs_to :entity

  accepts_nested_attributes_for :entity
end
