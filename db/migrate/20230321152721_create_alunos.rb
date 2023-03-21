class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :serie
      t.string :turno
      t.date :data_nascimento
      t.string :pai
      t.string :mae
      t.string :responsavel
      t.integer :status

      t.timestamps
    end
  end
end
