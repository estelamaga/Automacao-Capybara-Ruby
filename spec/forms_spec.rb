describe "Forms" do
  it "Login com sucesso" do
    #Visitar a página Login
    visit "https://training-wheels-protocol.herokuapp.com/login"
    
    #Preenchendo o formulário - para o fill in pode usar tanto o name como o id.
    fill_in "username", with:  "stark"
    fill_in "password", with: "jarvis!"

    #Clicando no botão Login
    click_button "Login"

    #Verificar se a mensagem de login com sucesso é exibida,buscando um elemento.
    expect(find("#flash").visible?).to be true
  end
end

#Método visible retorna um boleano