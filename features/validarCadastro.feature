#language: pt
#utf-8

Funcionalidade: Valida Cadastro

@CadastroValido
Cenario: Realizar cadastro valido
Dado que estou no site e clico em Register
Quando preencho os dados
Entao valido se cadastro está válido

@CadastroInvalido
Cenario: Realizar cadastro invalido
Dado que clico em Register
Quando preencho os dados invalidos
Entao valido se cadastro está inválido


