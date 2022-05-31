json.extract! vacinacao, :id, :desc_local, :data, :horario, :usuario_id, :created_at, :updated_at
json.url vacinacao_url(vacinacao, format: :json)
