json.array!(@contratos) do |contrato|
  json.extract! contrato, :id, :codigo, :nombre, :activo, :descripcion, :carpeta, :fecha_inicio, :fecha_fin, :fecha_prorroga_hasta
  json.url contrato_url(contrato, format: :json)
end
