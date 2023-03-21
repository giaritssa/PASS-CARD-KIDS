require "application_system_test_case"

class AlunosTest < ApplicationSystemTestCase
  setup do
    @aluno = alunos(:one)
  end

  test "visiting the index" do
    visit alunos_url
    assert_selector "h1", text: "Alunos"
  end

  test "should create aluno" do
    visit alunos_url
    click_on "New aluno"

    fill_in "Data nascimento", with: @aluno.data_nascimento
    fill_in "Mae", with: @aluno.mae
    fill_in "Nome", with: @aluno.nome
    fill_in "Pai", with: @aluno.pai
    fill_in "Responsavel", with: @aluno.responsavel
    fill_in "Serie", with: @aluno.serie
    fill_in "Status", with: @aluno.status
    fill_in "Turno", with: @aluno.turno
    click_on "Create Aluno"

    assert_text "Aluno was successfully created"
    click_on "Back"
  end

  test "should update Aluno" do
    visit aluno_url(@aluno)
    click_on "Edit this aluno", match: :first

    fill_in "Data nascimento", with: @aluno.data_nascimento
    fill_in "Mae", with: @aluno.mae
    fill_in "Nome", with: @aluno.nome
    fill_in "Pai", with: @aluno.pai
    fill_in "Responsavel", with: @aluno.responsavel
    fill_in "Serie", with: @aluno.serie
    fill_in "Status", with: @aluno.status
    fill_in "Turno", with: @aluno.turno
    click_on "Update Aluno"

    assert_text "Aluno was successfully updated"
    click_on "Back"
  end

  test "should destroy Aluno" do
    visit aluno_url(@aluno)
    click_on "Destroy this aluno", match: :first

    assert_text "Aluno was successfully destroyed"
  end
end
