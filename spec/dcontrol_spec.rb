describe "controle dinamico", :dc do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end

  #Cen�rio
  # Quando tem a propriedade disabled true o campo est� desabilitado.
  #Quando tem a propiedade disabled o campo est� habilitado.

  it "Quando habilita o campo" do
    res = page.has_field? "movie", disabled: true
    puts res

    click_button "Habilita"

    res = page.has_field? "movie", disabled: false
    puts res
  end
end

#Observa�oes
#Perguntando se existe um identificador com o campo movie
# O ponto de ? traz um valor TRUE ou FALSE
