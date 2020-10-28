#language: pt
#encoding: utf-8

Funcionalidade: Cadastro de Usuários

  Sendo um visitante do site Parodify
  Quero fazer o meu cadastro
  Para que eu possa ouvir minhas músicas favoritas

  @happy
  Cenario: Cadastro

    Dado que acesso a pagina de cadastro
    Quando submeto o meu cadastro com:

      | email          | fernando@email.com |
      | senha          | pwd123             |
      | senha_confirma | pwd123             |

    Entao devo ser redirecionado para a area logada

  Esquema do Cenário: Tentativa de Cadastro
    Dado que acesso a pagina de cadastro
    Quando submeto o meu cadastro com:
      | email          | <email>          |
      | senha          | <senha>          |
      | confirma_senha | <confirma_senha> |
    Entao devo ver a mensagem: "<mensagem_saida>"

    Exemplos:
      | email              | senha  | confirma_senha | mensagem_saida                       |
      |                    | pwd123 | pwd123         | Oops! Informe seu email.             |
      | fernando@email.com |        |                | Oops! Informe sua senha.             |
      | fernando@email.com | pwd123 | abc123         | Oops! Senhas não são iguais.         |
      |                    |        |                | Oops! Informe seu email e sua senha. |

