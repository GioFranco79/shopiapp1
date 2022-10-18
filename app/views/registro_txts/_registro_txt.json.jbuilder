json.extract! registro_txt, :id, :nombre, :valor, :created_at, :updated_at
json.url registro_txt_url(registro_txt, format: :json)
