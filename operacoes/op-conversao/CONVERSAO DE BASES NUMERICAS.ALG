Algoritmo "Convers�o de Bases n�mericas"

// Convers�o de bases n�mericas
// B10XB2
// B2XB10
// B2xB16

Var


   rest, d, b, dec, base, hexa, hexad: real
   bin, x: inteiro
   resultado, S_N, op: caracter



Inicio

   repita

      limpatela

      escreval("Qual tipo de convers�o voc� deseja realizar?")
      escreval("--------------------------------")
      escreval("B10XB2 - Decimal para Bin�rio - Digite (1)")
      escreval("B2XB10 - Bin�rio para Decimal - Digite (2)")
      escreval("B2XB8 - Bin�rio para Octal - Digite (3)")
      escreval("B8XB2 - Octal para Bin�rio - Digite (4)")
      escreval("B2XB16 - Bin�rio para Hexadecimal - Digite (5)")
      escreval("B16XB2 - Hexadecimal para Bin�rio - Digite (6)")
      escreval("Para sair, digite (S)")
      leia (op)


      escolha op

      caso "1"

         limpatela

         repita

            escreval("Digite um n�mero para converter de Decimal para Bin�rio: ")
            escreva("Decimal: " )
            leia(dec)

            d <- dec
            resultado <- ""

            repita

               se dec % 2 = 1 entao

                  resultado <- ("1") + resultado

               fimse

               se dec % 2 = 0 entao

                  resultado <- ("0") + resultado

               fimse

               rest <- dec/2

               dec <- rest

            ate dec < 2

            se rest >=1  entao

               resultado <- ("1") + resultado

            fimse

            escreval("A convers�o do n�mero decimal:", d)
            escreval("Corresponde ao n�mero bin�rio: ", resultado)
            escreval("-----------------------------")
            escreval("Deseja converter outro n�mero?")
            escreval("Sim - Digite (S) / N�o - Digite (N)")
            leia(S_N)

            se (S_N = "S") ou (S_N = "s") entao

               limpatela

            fimse

         ate (S_N = "N") ou (S_N = "n")

      caso "2"

         limpatela

         repita

            escreval("Digite um n�mero para converter de Bin�rio para Decimal: ")
            escreval("Lembre-se que um n�mero bin�rio � composto apenas por (0 e 1).")
            escreval("***Limite de 10 digitos***")
            escreva("Bin�rio: ")
            leia(b)

            base <- 1
            x <- 0
            dec <- 0

            repita

               bin <- (b/base) % 10

               se bin >= 1 entao

                  dec <- dec + (2^x)

               fimse

               x <- x + 1

               base <- base * 10

            ate base > b

            escreval("A convers�o do n�mero bin�rio: ", b)
            escreval("Corresponde ao n�mero decimal: ", dec)
            escreval("-----------------------------")
            escreval("Deseja converter outro n�mero?")
            escreval("Sim - Digite (S) / N�o - Digite (N)")
            leia(S_N)

            se (S_N = "S") ou (S_N = "s") entao

               bin <- 0
               dec <- 0

               limpatela

            fimse

         ate (S_N = "N") ou (S_N = "n")

      caso "3"

         // c�digo para convers�o - B2XB8 - Bin�rio para Octal



      caso "4"

         // c�digo para convers�o - B8XB2 - Octal para Bin�rio



      caso "5"

         repita

            limpatela

            escreval("Digite um n�mero para converter de bin�rio para hexadecimal. ")
            escreval("Lembre-se que um n�mero bin�rio � composto apenas por (0 e 1).")
            escreval("***Limite de 10 digitos***")
            escreva("Binario: ")
            leia(b)

            base <- 1
            x <- 0
            resultado <- ""

            enquanto base <= b faca

               repita

                  hexa <- (b/base) % 10

                  se hexa >=1 entao

                     hexad <- hexad + (1 * (2^x))

                  fimse

                  x <- x + 1

                  base <- base * 10

               ate x = 4

               se x = 4 entao

                  escolha hexad

                  caso 1
                     resultado <- "1" + resultado

                  caso 2
                     resultado <- "2" + resultado

                  caso 3
                     resultado <- "3" + resultado

                  caso 4
                     resultado <- "4" + resultado

                  caso 5
                     resultado <- "5" + resultado

                  caso 6
                     resultado <- "6" + resultado

                  caso 7
                     resultado <- "7" + resultado

                  caso 8
                     resultado <- "8" + resultado

                  caso 9
                     resultado <- "9" + resultado

                  caso 10
                     resultado <- "A" + resultado

                  caso 11
                     resultado <- "B" + resultado

                  caso 12
                     resultado <- "C" + resultado

                  caso 13
                     resultado <- "D" + resultado

                  caso 14
                     resultado <- "E" + resultado

                  caso 15
                     resultado <- "F" + resultado

                  fimescolha

                  x <- 0
                  hexad <- 0
                  hexa <- 0

               fimse

            fimenquanto

            escreval("A convers�o do n�mero bin�rio: ", b)
            escreval("Corresponde ao valor hexadecimal: ", resultado, " - h.")
            escreval("-----------------------------")
            escreval("Deseja converter outro n�mero?")
            escreval("Sim - Digite (S) / N�o - Digite (N)")
            leia(S_N)

            se (S_N = "S") ou (S_N = "s") entao

               limpatela

            fimse

         ate (S_N = "N") ou (S_N = "n")


      fimescolha

   ate (op = "S") ou (op = "s")









Fimalgoritmo