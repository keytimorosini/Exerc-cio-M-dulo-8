#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto: Dado que eu acesse a página de cliente EBAC-SHOP

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcados com asteriscos
Quando eu preencher todos os dados no "Campo obrigatório" marcados com asteriscos
Então deve exibir a mensagem "Cadastro realizado com sucesso!"

Cenário: Nãp permitir dados inválidos ou campos vzaios
Quando eu não preencher todos os dados no "Campo obrigatório" com dados válidos
Então deve exibir a uma <mensagem> de alerta "Campo obrigatório não preenchido"

