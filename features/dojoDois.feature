#language: pt
#utf-8

@ValidaCriacaoEdicaoExclusaoTask
Funcionalidade: Realizar o cadastro, edição e exclusão de Tasks

Contexto: Logado no site
Dado que estou logado no site SuiteCRM

@teste
Esquema do Cenario: Criar task
Quando insiro os valores <Subject> <Status> <Priority> para criar task
Entao valido se task foi criada <Subject>
Exemplos:
|       Subject          |        Status          |     Priority      |
|       "Teste1"         |    "Pending Input"     |      "Low"        |
|       "Teste2"         |      "Deferred"        |      "High"       |
|       "Teste3"         |     "In Progress"      |     "Medium"      |

Cenario: Editar task
Quando seleciono a task que quero Editar
Então altero os dados e salvo a edição

Cenario: Excluir task
Quando seleciono a task que quero Excluir
Então realizo a exclusão