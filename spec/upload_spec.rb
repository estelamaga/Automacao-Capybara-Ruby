describe "upload", :upload do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    #Essa variavel vaia armazenar o caminho absoluto.
    @arquivo = Dir.pwd + "/spec/fixture/arquivo.txt"
    @imagem = Dir.pwd + "/spec/fixture/todd.jpg"
  end

  #Cenário c
  it "upload com arquivo texto" do
    attach_file("file-upload", @arquivo)
    click_button "Upload"

    div_arquivo = find("#uploaded-file")
    expect(div_arquivo.text).to eql "arquivo.txt"
  end

  it "upload da imagem" do
    attach_file("file-upload", @imagem)
    click_button "Upload"

    sleep 5
    img = find("#new-image")
    expect(img[:src]).to include "upload/todd.jpg"
  end

  after(:each) do
    sleep 3
  end
end
