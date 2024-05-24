programa {
  cadeia descricoes[100]
  cadeia data[100]
  cadeia horas[100]
  real valor[100]
  inteiro contador = 0

  funcao inicio() {
    montarMenu()
  }
  funcao montarMenu (){
    inteiro opcao

    faca{
    escreva("=====MENU SISTEMA====\n")
    escreva("1- Adicionar receita:\n")
    escreva("2- Adicionar Despesa:\n")
    escreva("3- Lista de fluxo:\n")
    escreva("4- Saldo:\n")
    escreva("0- Sair\n")
    escreva("Escolha uma opcao: ")
    leia(opcao)

    escolha(opcao){
      caso 1:
        requisitarReceita()
        pare
      caso 2:
        adicionarDespesa()
        pare
      caso 3:
        //colocar lista de fluxo
        pare
      caso 4:
        saldoAtual ()
        pare
      caso contrario: 
        opcao = 0
    }
    } enquanto (opcao != 0)
  }

  funcao requisitarReceita(){
    cadeia descricoesTransacao, dataTransacao, horasTransacao
    real valorTransacao

    escreva("Digite a descrição da transferência: \n Descrição: ")
    leia(descricoesTransacao)

    escreva("Digite o valor da transferência: \n R$: ")
    leia(valorTransacao)

    escreva("Digite a Data e Hora da transferência: \n Data: ")
    leia(dataTransacao)
    escreva(" Hora: ")
    leia(horasTransacao)

    adicionarReceita(descricoesTransacao, valorTransacao, dataTransacao, horasTransacao)
  }
  funcao adicionarReceita(cadeia descricoesTransacao, real valorTransacao, cadeia dataTransacao, cadeia horasTransacao){
    descricoes[contador] = descricoesTransacao
    valor[contador] = valorTransacao
    data[contador] = dataTransacao
    horas[contador] = horasTransacao
    contador++
  }
  funcao adicionarDespesa(){
    cadeia descricoesTransacao, dataTransacao, horasTransacao, tipoNegativo
    real valorTransacao

    escreva("Digite a descrição da transferência: \n Descrição: ")
    leia(descricoesTransacao)

    faca{
      escreva("Digite o valor da retirada: \n R$: ")
      leia(valorTransacao)
    } enquanto (valorTransacao>=0)

    escreva("Digite a Data e Hora da transferência: \n Data: ")
    leia(dataTransacao)
    escreva(" Hora: ")
    leia(horasTransacao)

    adicionarReceita(descricoesTransacao, valorTransacao, dataTransacao, horasTransacao)
  }
  funcao saldoAtual (){
    real saldo = 0

    para(inteiro i = 0; i<contador; i++){
      saldo += valor[i]
    }
    escreva("Saldo:\nR$",saldo, "\n")
  }
}

