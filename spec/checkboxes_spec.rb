# Suíte de Teste

describe "caixa de seleção", :checkbox do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "marcando uma opção" do
    check("thor")
  end

  it "desmarcando uma opção" do
    uncheck("antman")
  end

  # Usando value
  it "marcando com find set true" do
    find("input[value=cap]").set(true)
  end

  it "desmarcando com find set false" do
    find("input[value=guardians").set(false)
  end

  after(:each) do
    sleep 3
  end
end
