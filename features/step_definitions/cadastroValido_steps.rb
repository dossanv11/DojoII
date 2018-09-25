
#|-------------------------------------------------------------|
#|                      CENARIO 1                              |
#|-------------------------------------------------------------|

Dado("que estou no site e clico em Register") do
    visit "https://world.episerver.com/download/Demo-Sites/"
    find(:xpath, '//*[@id="userPanel"]/ul/li[1]/a').click()
  end
  
  Quando("preencho os dados") do
    fill_in('RegisterPostbackData_FirstName', :with => 'Valdir')
    fill_in('RegisterPostbackData_LastName', :with => 'dos Santos Junior')
    fill_in('RegisterPostbackData_Email', :with => 'valdir.Junior@inmetrics.com.br')
    fill_in('RegisterPostbackData_Username', :with => 'dossanv11')
    fill_in('RegisterPostbackData_Password', :with => 'Inm3tr!cs')
    fill_in('RegisterPostbackData_ConfirmPassword', :with => 'Inm3tr!cs')
    fill_in('RegisterPostbackData_FirstName', :with => 'Valdir')
    select('Brazil', :from => 'RegisterPostbackData_Country')
    click_button('regBtn')
    sleep(2)
  end
  
  Entao("valido se cadastro está válido") do
    assert_text('Your account is created! Please check your email to validate.')
  end

#|-------------------------------------------------------------|
#|                      CENARIO 2                              |
#|-------------------------------------------------------------|

  Dado("que clico em Register") do
    visit "https://world.episerver.com/download/Demo-Sites/"
    find(:xpath, '//*[@id="userPanel"]/ul/li[1]/a').click()
  end

  Quando("preencho os dados invalidos") do
    fill_in('RegisterPostbackData_FirstName', :with => 'Valdir')
    fill_in('RegisterPostbackData_LastName', :with => 'dos Santos Junior')
    fill_in('RegisterPostbackData_Email', :with => 'valdir.Junior@inmetrics.com.br')
    fill_in('RegisterPostbackData_Username', :with => 'dossanv11')
    fill_in('RegisterPostbackData_Password', :with => 'Inm3tr!cs')
    fill_in('RegisterPostbackData_ConfirmPassword', :with => 'Inm3tr!cs')
    fill_in('RegisterPostbackData_FirstName', :with => 'Valdir')
    select('Brazil', :from => 'RegisterPostbackData_Country')
    click_button('regBtn')
    sleep(2)
  end

  Entao("valido se cadastro está inválido") do
    assert_text('Username already used.')
  end