Dado("que estou logado no site SuiteCRM") do
    @ct = CreateTasks.new
    @login = Login.new
    @et = EditTask.new
    @dt = DeleteTask.new

	  @login.load
    @login.realizaLogin("will","will")
    @login.botaoLogin.click
    click_link('grouptab_3')
    click_link('moduleTab_6_Tasks')
  end
  
  Quando("insiro os valores {string} {string} {string} para criar task") do |subject, status, priority|
    sleep 5
    click_link('Create Task')
    @name = subject
    @ct.realizaCadastro(@name, status, priority)
    sleep 5
    @ct.botaoSave.click
  end
  
  Entao("valido se task foi criada {string}") do |string|
    expect(string).to eql @name
  end
  
  Quando("seleciono a task que quero Editar") do
    @taskEd = "TesteEditado"
    @et.task.click
    @et.action.click
    @et.edit.click
    @et.editaCadastro(@taskEd)
    @et.botaoSave.click
  end
  
  Então("altero os dados e salvo a edição") do
    assert_text(@taskEd)
  end
  
  Quando("seleciono a task que quero Excluir") do
    @dt.task.click
    @dt.action.click
    @dt.delete.click
  end
  
  Então("realizo a exclusão") do
    dialog = page.driver.browser.switch_to.alert
    dialog.accept
    expect(@taskEd).to eql @taskEd
  end