algoritmo "Cadastro Simples de Produto"
// Fun��o : ENQUANTO
// Autor : NICOLAS RODRIGUES
// Data : 10/05/2024
// Se��o de Declara��es 
var
//Ingredientes em Estoque
estoquemassa, estoquemussarela, estoquepresunto, estoqueoregano, estoquecarnemoida, estoquelegumes, estoquechocolate, estoquebanana: real
//Estoque
estoquepasteis, estoquepizza, estoquecarnelegumes, estoquedoce, qtd, venda: inteiro
//Produ��o
producaopizza, producaocarnelegumes, producaodoce: real
//Pre�o
pizzapreco, carnelegumespreco, docepreco, precopedido: real
//Repeti��o
repeticao, sabor: caractere
inicio
// Se��o de Comandos
escreval("BEM-VINDO AO PASTELAO DO NIKAO LTDA.")
escreval("Hoje � Quarta-feira, esperamos vender 30 pasteis na nossa pastelaria.")
escreval("Felizmente vendemos tudo ontem e precisamos repor nosso estoque.")
escreval("--------------------------------------------------------------------")
//Estoque Atual
escreval("Estoque Atual:")
escreval("massa: ", estoquemassa)
escreval("mussarela: ", estoquemussarela)
escreval("presunto: ", estoquepresunto)
escreval("or�gano: ", estoqueoregano)
escreval("carne mo�da: ", estoquecarnemoida)
escreval("legumes: ", estoquelegumes)
escreval("chocolate: ", estoquechocolate)
escreval("banana: ", estoquebanana)
escreval("--------------------------------------------------------------------")
escreval("O chefe deixou uma lista de mercado:")
escreval("massa = 3000g")
escreval("mussarela = 300g")
escreval("presunto = 300g")
escreval("oregano = 30g")
escreval("carne mo�da = 500g")
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

// Baixa do Estoque de Ingredientes - Alimenta��o do Estoque de Past�is
escreval("Deseja produzir pasteis? S/N")
leia(repeticao)

ENQUANTO repeticao = "s" FACA
escreval("Qual sabor produzir?")
leia(sabor)
escreval("Quantas unidades?")
leia(qtd)

//Produ��o dos Past�is

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

//Estoque P�s-Produ��o
escreval("Estoque Atual:")
escreval("massa: ", estoquemassa)
escreval("mussarela: ", estoquemussarela)
escreval("presunto: ", estoquepresunto)
escreval("or�gano: ", estoqueoregano)
escreval("carne mo�da: ", estoquecarnemoida)
escreval("legumes: ", estoquelegumes)
escreval("chocolate: ", estoquechocolate)
escreval("banana: ", estoquebanana)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Ingredientes atualizado com sucesso!")
escreval("--------------------------------------------------------------------")

//Estoque de Past�is Atual
escreval("Estoque de Past�is atual: ")
escreval("Pizza: ", estoquepizza)
escreval("Carne com Legumes: ", estoquecarnelegumes)
escreval("Doce: ", estoquedoce)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Past�is atualizado com sucesso!")
escreval("--------------------------------------------------------------------")

escreval("--------------------------------------------------------------------")
escreval("PARAB�NS! OS PAST�IS EST�O FRESQUINHOS E PRONTOS PARA VENDER!!!")
escreval("--------------------------------------------------------------------")


escreval("--------------------------------------------------------------------")
// Processamento do pedido
escreval("Come�amos bem! O primeiro cliente chegou e j� fez seu pedido!")
escreval("--------------------------------------------------------------------")

precopedido <- 0
repeticao <- "s"

//PRE�O PASTEL
pizzapreco <- 5.50
carnelegumespreco <- 4.50
docepreco <- 6.50

ENQUANTO repeticao = "s" FACA
    escreval("Qual o sabor escolhido?")
    leia(sabor)
    escreval("Qual a quantidade?")
    leia(qtd)

    // C�lculo do pre�o do pedido
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

// Sa�da do pre�o total do pedido
escreval("Seu pedido ficou em R$: ", precopedido)

escreval("Deseja algo mais? Responda com S/N")
leia(repeticao)
FIMENQUANTO

escreval("--------------------------------------------------------------------")
//Estoque de Past�is Atual
escreval("Estoque de Past�is atual: ")
escreval("Pizza: ", estoquepizza)
escreval("Carne com Legumes: ", estoquecarnelegumes)
escreval("Doce: ", estoquedoce)
escreval("--------------------------------------------------------------------")
escreval("Estoque de Past�is atualizado.")
escreval("--------------------------------------------------------------------")
escreval("OBRIGADO POR USAR O SOFTWAREZ�O DO NIK�O, � N�S!!!")
escreval("--------------------------------------------------------------------")

SE estoquepizza <= 2 ENTAO
    escreval("ATEN��O! O estoque do sabor Pizza est� baixo!")
FIMSE
SE estoquecarnelegumes <=  2 ENTAO
    escreval("ATEN��O! O estoque do sabor Carne com Legumes est� baixo!")
FIMSE
SE estoquedoce <= 2 ENTAO
    escreval("ATEN��O! O estoque do sabor Doce est� baixo!")
FIMSE

fimalgoritmo
