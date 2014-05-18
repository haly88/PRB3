json.array!(@telefonos) do |telefono|
  json.extract! telefono, :id, :telefono, :usuario_id
  json.url telefono_url(telefono, format: :json)
end
