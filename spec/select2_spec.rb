describe "Select 2", :select2 do
  describe "single", :single do
    before(:each)do
      visit "https://training-wheels-protocol.herokuapp.com/apps/select2/single.html"
    end

    it "Selecionar ator por nome"do
      find(".select2-selection--single").click
      sleep 1
      find(".select2-results__option", text: 'Adam Sandler').click
      sleep 5
    end
  end
    
    describe "multiple"do
    before(:each)do
      visit "/apps/select2/single.html"
    end
  end
end