describe "Forms" do
  it "Login com sucesso" do
    #Visitar a página Login
    visit "https://training-wheels-protocol.herokuapp.com/login"
    
    #Preenchendo o formulário - para o fill in pode usar tanto o name como o id.
    fill_in "username", with:  "stark"
    fill_in "password", with: "jarvis!"

    #Clicando no botão Login
    click_button "Login"

    #Verificando se o elemento existe..
    expect(find("#flash").visible?).to be true

    #Verificar a mensagem de sucesso
    # O eql compara se realmente é idêntico
    # to have_conten verifica se a string contém diretamente no elemento.
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end

#Método visible retorna um boleano