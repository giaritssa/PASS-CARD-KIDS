json.extract! aluno, :id, :nome, :serie, :turno, :data_nascimento, :pai, :mae, :responsavel, :status, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
