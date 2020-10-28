#language: pt

Funcionalidade: Login
    Sendo um usuário previamente autenticado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenário: Login do usuário
        Dado que acesso a pagina de login
        Quando submeto minhas credenciais com: "jose@email.com" e "pwd123"
        Entao devo ser redirecionado para a area logada

    Esquema do Cenário: Tentativa de Login

        Dado que acesso a pagina de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Entao devo ver a mensagem de erro: "Oops! Dados de acesso incorretos!"

        Exemplos:
            | email           | senha  |
            | jose@email.com  | pwd123 |
            |                 |        |
            | jose1@gmail.com |        |
            | jose@email.com  |        |