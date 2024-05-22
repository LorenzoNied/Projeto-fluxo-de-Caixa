programa {
  cadeia descricoes[1000]
  cadeia data[1000]
  cadeia horas[1000]
  real valor[1000]
  inteiro contador = 0

  funcao inicio() {
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