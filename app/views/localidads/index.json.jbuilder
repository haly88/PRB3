json.array!(@localidads) do |localidad|
  json.extract! localidad, :id, :codigo, :nombre, :activo
  json.url localidad_url(localidad, format: :json)
end
