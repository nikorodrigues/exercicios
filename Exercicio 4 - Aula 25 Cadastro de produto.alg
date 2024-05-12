algoritmo "Cadastro Simples de Produto"
// Função : ENQUANTO
// Autor : NICOLAS RODRIGUES
// Data : 10/05/2024
// Seção de Declarações 
var
//Ingredientes em Estoque
estoquemassa, estoquemussarela, estoquepresunto, estoqueoregano, estoquecarnemoida, estoquelegumes, estoquechocolate, estoquebanana: real
//Estoque
estoquepasteis, estoquepizza, estoquecarnelegumes, estoquedoce, qtd, venda: inteiro
//Produção
producaopizza, producaocarnelegumes, producaodoce: real
//Preço
pizzapreco, carnelegumespreco, docepreco, precopedido: real
//Repetição
repeticao, sabor: caractere
inicio
// Seção de Comandos
escreval("BEM-VINDO AO PASTELAO DO NIKAO LTDA.")
escreval("Hoje é Quarta-feira, esperamos vender 30 pasteis na nossa pastelaria.")
escreval("Felizmente vendemos tudo ontem e precisamos repor nosso estoque.")
escreval("--------------------------------------------------------------------")
//Estoque Atual
escreval("Estoque Atual:")
escreval("massa: ", estoquemassa)
escreval("mussarela: ", estoquemussarela)
escreval("presunto: ", estoquepresunto)
escreval("orégano: ", estoqueoregano)
escreval("carne moída: ", estoquecarnemoida)
escreval("legumes: ", estoquelegumes)
escreval("chocolate: ", estoquechocolate)
escreval("banana: ", estoquebanana)
escreval("--------------------------------------------------------------------")
escreval("O chefe deixou uma lista de mercado:")
escreval("massa = 3000g")
escreval("mussarela = 300g")
escreval("presunto = 300g")
escreval("oregano = 30g")
escreval("carne moída = 500g")
escreval("legumes = 300g")
escreval("chocolate 60% = 200g")
escreval("banana = 300g")
escreval("--------------------------------------------------------------------")

escreval("Informe a quantidade de Massa no estoque(gramas)")
leia(estoquemassa)
escreval("Informe a quantidade de mussarela em estoque(gramas)")
leia(estoquemussarela)
escreval("Informe a quantidade de presunto em estoque(gramas)")
leia(estoquepresunto)
escreval("Informe a quantidade de oregano em estoque(gramas)")
leia(estoqueoregano)
escreval("Informe a quantidade de carnemoida em estoque(gramas)")
leia(estoquecarnemoida)
escreval("Informe a quantidade de legumes em estoque(gramas)")
leia(estoquelegumes)
escreval("Informe a quantidade de chocolate em estoque(gramas)")
leia(estoquechocolate)
escreval("Informe a quantidade de banana em estoque(gramas)")
leia(estoquebanana)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Ingredientes atualizado com sucesso!")
escreval("--------------------------------------------------------------------")

// Baixa do Estoque de Ingredientes - Alimentação do Estoque de Pastéis
escreval("Deseja produzir pasteis? S/N")
leia(repeticao)

ENQUANTO repeticao = "s" FACA
escreval("Qual sabor produzir?")
leia(sabor)
escreval("Quantas unidades?")
leia(qtd)

//Produção dos Pastéis

SE sabor = "pizza" ENTAO
//Calcular ingredientes para produzir sabor pizza
producaopizza <- estoquemassa - (qtd * 100) + estoquemussarela - (qtd * 30) + estoquepresunto - (qtd * 30) + estoqueoregano - (qtd * 3)
//Atualizar o Estoque do sabor Pizza
estoquepizza <- estoquepizza + qtd
//Atualizar o Estoque de Ingredientes
estoquemassa <- estoquemassa - (qtd*100)
estoquemussarela <- estoquemussarela - (qtd*30)
estoquepresunto <- estoquepresunto - (qtd*30)
estoqueoregano <- estoqueoregano - (qtd*3)
FIMSE

SE sabor = "carne" ENTAO
//Calcular ingredientes para Produzir sabor Carne
producaocarnelegumes <- estoquemassa - (qtd * 100) + estoquecarnemoida - (qtd * 50) + estoquelegumes - (qtd * 30)
//Atualizar o Estoque do sabor Carne
estoquecarnelegumes <- estoquecarnelegumes + qtd
//Atualizar o Estoque de Ingredientes
estoquemassa <- estoquemassa - (qtd*100)
estoquecarnemoida <- estoquecarnemoida - (qtd*50)
estoquelegumes <- estoquelegumes - (qtd*30)
FIMSE

SE sabor = "doce" ENTAO
//Calcular ingredientes para Produzir sabor Doce
producaodoce <- estoquemassa - (qtd * 100) + estoquechocolate - (qtd * 20) + estoquebanana - (qtd * 30)
//Atualizar o Estoque do sabor Doce
estoquedoce <- estoquedoce + qtd
//Atualizar o Estoque de Ingredientes
estoquemassa <- estoquemassa - (qtd*100)
estoquechocolate <- estoquechocolate - (qtd*20)
estoquebanana <- estoquebanana - (qtd*30)
FIMSE

escreval("Deseja produzir mais pasteis? S/N")
leia(repeticao)
FIMENQUANTO

//Estoque Pós-Produção
escreval("Estoque Atual:")
escreval("massa: ", estoquemassa)
escreval("mussarela: ", estoquemussarela)
escreval("presunto: ", estoquepresunto)
escreval("orégano: ", estoqueoregano)
escreval("carne moída: ", estoquecarnemoida)
escreval("legumes: ", estoquelegumes)
escreval("chocolate: ", estoquechocolate)
escreval("banana: ", estoquebanana)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Ingredientes atualizado com sucesso!")
escreval("--------------------------------------------------------------------")

//Estoque de Pastéis Atual
escreval("Estoque de Pastéis atual: ")
escreval("Pizza: ", estoquepizza)
escreval("Carne com Legumes: ", estoquecarnelegumes)
escreval("Doce: ", estoquedoce)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Pastéis atualizado com sucesso!")
escreval("--------------------------------------------------------------------")

escreval("--------------------------------------------------------------------")
escreval("PARABÉNS! OS PASTÉIS ESTÃO FRESQUINHOS E PRONTOS PARA VENDER!!!")
escreval("--------------------------------------------------------------------")


escreval("--------------------------------------------------------------------")
// Processamento do pedido
escreval("Começamos bem! O primeiro cliente chegou e já fez seu pedido!")
escreval("--------------------------------------------------------------------")

precopedido <- 0
repeticao <- "s"

//PREÇO PASTEL
pizzapreco <- 5.50
carnelegumespreco <- 4.50
docepreco <- 6.50

ENQUANTO repeticao = "s" FACA
    escreval("Qual o sabor escolhido?")
    leia(sabor)
    escreval("Qual a quantidade?")
    leia(qtd)

    // Cálculo do preço do pedido
    SE sabor = "pizza" ENTAO
    precopedido <- precopedido + (pizzapreco * qtd)
    estoquepizza <- estoquepizza - qtd
    FIMSE
    SE sabor = "carne" ENTAO
    precopedido <- precopedido + (carnelegumespreco * qtd)
    estoquecarnelegumes <- estoquecarnelegumes - qtd
    FIMSE
    SE sabor = "doce" ENTAO
    precopedido <- precopedido + (docepreco * qtd)
    estoquedoce <- estoquedoce - qtd
    FIMSE

// Saída do preço total do pedido
escreval("Seu pedido ficou em R$: ", precopedido)

escreval("Deseja algo mais? Responda com S/N")
leia(repeticao)
FIMENQUANTO

escreval("--------------------------------------------------------------------")
//Estoque de Pastéis Atual
escreval("Estoque de Pastéis atual: ")
escreval("Pizza: ", estoquepizza)
escreval("Carne com Legumes: ", estoquecarnelegumes)
escreval("Doce: ", estoquedoce)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Pastéis atualizado.")
escreval("--------------------------------------------------------------------")
escreval("OBRIGADO POR USAR O SOFTWAREZÃO DO NIKÃO, É NÓS!!!")
escreval("--------------------------------------------------------------------")

SE estoquepizza <= 2 ENTAO
    escreval("ATENÇÃO! O estoque do sabor Pizza está baixo!")
FIMSE
SE estoquecarnelegumes <=  2 ENTAO
    escreval("ATENÇÃO! O estoque do sabor Carne com Legumes está baixo!")
FIMSE
SE estoquedoce <= 2 ENTAO
    escreval("ATENÇÃO! O estoque do sabor Doce está baixo!")
FIMSE

fimalgoritmo
