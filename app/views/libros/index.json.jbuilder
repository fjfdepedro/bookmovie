json.array!(@libros) do |libro|
  json.extract! libro, :id, :title, :created.type, :created.value, :last_modified.type, :string, :last_modified.value, :latest_revision, :key, :authors.type.key, :authors.author.key, :type.key, :subjects, :revision
  json.url libro_url(libro, format: :json)
end
