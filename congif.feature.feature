            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:  Dado que eu acesse a página de cliente EBAC-SHOP

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar meu "produto", "cor", "tamanho" e "quantidade"
            Então deve exibir a mensagem "inserir produto no carrinho"

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar meu "produto"
            E não selecionar "cor", "tamanho" ou "quantidade"
            Então deve exibir a mensagem "Campo orbigatório não selecionado"

            Esquema do Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar meu <produto>, <cor>, <tamanho>
            E a <quantidade> for superior a <10> itens
            Então exibir a <mensagem> "É permitido apenas 10 produtos por venda"

            Exemplos:
            | cor           | tamanho       | quantidade | mensagem                                   |
            | "selecionado" | "selecionado" | "1"        | "Inserir produto no carrinho"              |
            | "selecionado" | "selecionado" | "10"       | "Inserir produto no carrinho"              |
            | "selecionado" | "selecionado" | "11"       | "É permitido apenas 10 produtos por venda" | 


            Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando eu selecionar meu "produto", "cor" e "tamanho"
            E clicar no botão "limpar"
            Então deve voltar ao estado original e exibir a mensagem "Campo orbigatório não selecionado"

                  



