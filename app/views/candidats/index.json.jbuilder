json.array!(@candidats) do |candidat|
  json.extract! candidat, :id, :nom, :prenom, :parti, :voix, :elu
  json.url candidat_url(candidat, format: :json)
end
