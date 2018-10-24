Dado("que eu tenha acesso ao WebService") do
    puts 'Acesso OK'
  end
  
  Quando("eu fizer a requisição de criação do registro do livro") do
    begin
      @response = Books.new.create('Livro Dom Casmurro','teste@inmetrics.com', 256, 'Sumário resumido','2017-06-15T13:00:00.549505+00:00')
      puts @response.body        
  end
  end
  
  Entao("valido o código esperado de resposta para criação") do
    expect(@response.code).to eq 200
    puts "Validando o recebimento da resposta 200"
    puts @response.body
  end
  
  Quando("eu fizer a requisição de leitura do registro do livro") do
    begin
      @response = Books.new.get(201)
      puts @response.body        
    end
  end
  
  Entao("valido o código de resposta esperado") do
    expect(@response.code).to eq 200
    puts "Validando o recebimento do código de resposta 200"
  end
  
  Quando("eu fizer a alteração do registro de um livro") do
    @response = Books.new.put(201,'Edição Especial do Dia das Mães')
    puts @response.body
  end
  