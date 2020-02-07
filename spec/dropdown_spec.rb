describe "caixa de seleção", :dropdown do
  it "item especifico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    select("Loki", from: "dropdown")
    sleep 3
  end

  # o  método find busca só um elemento
  it "item especifico com o find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(" .avenger-list ")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3
  end

  # o método all busca todos os elementos da lista
  it "qualquer elemento", :sample do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(" .avenger-list ")
    drop.all("option").sample.select_option
    sleep 3
  end
end
