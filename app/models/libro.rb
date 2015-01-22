class Libro
  include Mongoid::Document

  store_in collection: "books"

  field :title, type: String
  field :created, type: String
  field :description, type: String
  field :last_modified, type: String
  field :latest_revision, type: Integer
  field :key, type: String
  field :authors, type: String
  field :type, type: String
  field :subjects, type: Array
  field :revision, type: Integer
end
