describe "mouse hover", :hovers do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

 #Cenário

  it "Quando passo o mouse sobre o blade"do
   card = find("img[alt=Blade]")
   card.hover

   expect(page).to have_content "Nome: Blade"
  end

  it "Quando passo o mouse sobre o pantera"do
   card = find('img[alt="Pantera Negra"]')
   card.hover

   expect(page).to have_content "Nome: Pantera Negra"
  end

  it "Quando passo o mouse sobre o homem aranha"do
   card = find('img[alt="Homem Aranha"]')
   card.hover

   expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each)do
    sleep 5
  end
end