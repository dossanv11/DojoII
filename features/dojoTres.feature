#language: pt
#utf8

@testeAPI
Funcionalidade: Testar API

@post
Cenario: Criação do livro
Dado que eu tenha acesso ao WebService
Quando eu fizer a requisição de criação do registro do livro
Entao valido o código esperado de resposta para criação

@get
Cenario: Leitura do livro
Dado que eu tenha acesso ao WebService
Quando eu fizer a requisição de leitura do registro do livro
Entao valido o código de resposta esperado

@put
Cenario: Alteração do livro
Dado que eu tenha acesso ao WebService
Quando eu fizer a alteração do registro de um livro
Entao valido o código de resposta esperado