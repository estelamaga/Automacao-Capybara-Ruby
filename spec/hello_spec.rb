describe "Meu primeiro script" do 
  #cenário
  it "Visitar a página" do
    visit "https://training-wheels-protocol.herokuapp.com/"
    expect(page.title).to eql "Training Wheels Protocol"
  end
end