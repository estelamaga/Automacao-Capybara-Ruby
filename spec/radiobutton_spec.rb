describe "caixa de seleção", :radio do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/radios"
  end

  it "seleção por ID" do
    choose("cap")
  end

  it "seleção por find e css selector" do
    find("input[value=black-panther").click
  end

  after(:each) do
    sleep 3
  end
end
