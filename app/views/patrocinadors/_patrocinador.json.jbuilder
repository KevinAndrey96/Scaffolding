json.extract! patrocinador, :id, :nombre, :tipo, :telefono, :created_at, :updated_at
json.url patrocinador_url(patrocinador, format: :json)
