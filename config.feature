            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produtode acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a página de cliente EBAC-SHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar o produto, "cor", "tamanho" e "quantidade"
            Então deve exibir a mensagem "Inserir produto no carrinho"

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu não selecionar "cor", "tamanho" e "quantidade" do meu produto
            Então deve exibir a mensagem "Campo obrigatório não selecionado"

            Esquema do Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar o produto, <cor>, <tamanho>
            E a <quantidade> for superior a <10> itens
            Então exibir a <mensagem> "É permitido apenas 10 produtos por venda"

            Exemplos:
            | cor           | tamanho       | quantidade | mensagem                                   |
            | "selecionado" | "selecionado" | "1"        | "Inserir produto no carrinho"              |
            | "selecionado" | "selecionado" | "10"       | "Inserir produto no carrinho"              |
            | "selecionado" | "selecionado" | "11"       | "É permitido apenas 10 produtos por venda" |

            Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
            Quando eu selecionar o produto, "cor" e "tamanho" 
            E clicar no botão "limpar"
            Então deve voltar ao estado original e exibir a mensagem "Campo obrigatório não selecionado"
