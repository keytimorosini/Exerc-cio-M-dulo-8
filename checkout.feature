#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:  Dado que eu acesse a página de cliente EBAC-SHOP

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
Quando eu preencher todos os dados no "Campo Obrigatório" marcados com asteriscos 
Então deve exibir a mensagem "Cadastro realizado com Sucesso!"

Cenario: Não permitir dados inválidos ou campos vazios
Quando eu não preencher os dados no "Campo Obrigatório" com dados válidos
Então deve exibir uma <mensagem> de alerta "Campo Obrigatório não preenchido"

