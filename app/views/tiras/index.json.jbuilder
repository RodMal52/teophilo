json.array!(@tiras) do |tira|
  json.extract! tira, :id, :user_id, :titulo, :text1, :text2, :text3, :text4, :text5, :text6, :dia, :mes, :ano, :aprobado
  json.url tira_url(tira, format: :json)
end
