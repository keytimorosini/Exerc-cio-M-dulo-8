            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de cliente EBAC-SHOP

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu inserir o usuário "keyti@ebac.com"
            E a senha "Abc123@"
            Então deve ser direcionado para a tela de checkout e exibir a mensagem "Conferir pedido"

            Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            Quando eu inserir <usuario> e/ou <senha> inválidos
            Então deve exibir a <mensagem> "Usuário ou senha inválidos"

            Exemplos:
            | usuario                   | senha     | mensagem                     |
            | "jkhfkjhfa@ebac.com"      | "Abc@123" | "Usuário ou senha inválidos" |
            | "cacaca#123jhre@ebac.com" | "11>>>"   | "Usuário ou senha inválidos" |
            | "keyti@ebac.com"          | "555555"  | "Usuário ou senha inválidos" |
