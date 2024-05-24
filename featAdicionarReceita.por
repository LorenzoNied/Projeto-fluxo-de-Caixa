programa {
  inteiro ids[1000]
  cadeia descricoes[1000]
  cadeia data[1000]
  cadeia horas[1000]
  real valor[1000]
  inteiro contador = 0

  funcao inicio() {
    requisitarReceita()

    listaGeral(ids, descricoes, data, valor, horas)
  }

  funcao listaGeral(inteiro ids[], inteiro descricoes[],inteiro data[],inteiro horas[],inteiro valor[]){
    escreva("ID\t descrição\t hora\t data\t valor\n")
    escreva("--------------------------------------\n")
    para(inteiro i = 0; i < contador; i++){
      escreva(ids[i], " \t", descricoes[i], " \t", valor[i], " \t", data[i], " \t", horas[i], " \n")
    }
  }
  funcao requisitarReceita(){
    cadeia descricoesTransacao, dataTransacao, horasTransacao
    real valorTransacao

    escreva("Digite a descrição da transferência: \n Descrição: ")
    leia(descricoesTransacao)

    escreva("Digite o valor da transferência: \n R$: ")
    leia(valorTransacao)

    enquanto(valorTransacao <= 0){
      escreva("Insira um valor positivo! \n R$: ")
      leia(valorTransacao)
    }
     
    escreva("Digite a Data e Hora da transferência: \n Data: ")
    leia(dataTransacao)
    escreva(" Hora: ")
    leia(horasTransacao)

    ("Receita adicionada com sucesso!")

    adicionarReceita(descricoesTransacao, valorTransacao, dataTransacao, horasTransacao)
  }

  funcao adicionarReceita(cadeia descricoesTransacao, real valorTransacao, cadeia dataTransacao, cadeia horasTransacao){
    descricoes[contador] = descricoesTransacao
    valor[contador] = valorTransacao
    data[contador] = dataTransacao
    horas[contador] = horasTransacao
    ids[contador] = contador + 1 
    contador = contador + 1
  }
}