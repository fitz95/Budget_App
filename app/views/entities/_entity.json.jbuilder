# frozen_string_literal: true

json.extract! entity, :id, :name, :amount, :AuthorID, :created_at, :updated_at
json.url entity_url(entity, format: :json)
