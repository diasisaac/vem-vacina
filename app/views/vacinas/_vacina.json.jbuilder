json.extract! vacina, :id, :nome_vacina, :num_lote, :data_validade, :created_at, :updated_at
json.url vacina_url(vacina, format: :json)
