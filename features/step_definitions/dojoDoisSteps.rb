Dado("que estou logado no site SuiteCRM") do
    @ct = CreateTasks.new
    @login = Login.new
    @verCri = VerificaCriacao.new
	
	  @login.load
    @login.realizaLogin("will","will")
    @login.botaoLogin.click
  end
  
  Quando("insiro os valores {string} {string} {string} para criar task") do |subject, status, priority|
    @name = subject
    @name.realizaCadastro(@name,status,priority)
    @ct.botaoSave.click
  end
  
  Entao("valido se task foi criada {string}") do |string|
    expect(@verCri.criacaoTask.text).to eql @name
  end
  
  Quando("insiro os valores Teste{int} Deferred <Priority> para criar task") do |int|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("insiro os valores Teste{int} In Progress <Priority> para criar task") do |int|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("seleciono a task que quero Editar") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("altero os dados e salvo a edição") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("seleciono a task que quero Excluir") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("realizo a exclusão") do
    pending # Write code here that turns the phrase above into concrete actions
  end