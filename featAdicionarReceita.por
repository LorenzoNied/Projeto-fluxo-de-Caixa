programa {
  cadeia descricoes[1000]
  cadeia data[1000]
  cadeia horas[1000]
  real valor[1000]
  inteiro contador = 0

  funcao inicio() {
<<<<<<< HEAD
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
      caso(1):
        //colcoar funcao adicionar reiceta
      pare
      caso(2):
        //colocar adicionar despesa
      pare
      caso(3):
        //colocar lista de fluxo
      pare
      caso(4):
        //colocar saldo
      pare
      caso contrario: 
        opcao = 0
    }
    } enquanto (opcao != 0)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 703; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
=======
    requisitarReceita()
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
  }
}
>>>>>>> feature/002
