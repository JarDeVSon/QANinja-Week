#language: pt
#encoding: utf-8
Funcionalidade: Reproduzir paródia

    Sendo um usuario cadastrado
    Quero reproduzir minhas musicas no player do Parodify
    Para que eu possa ouvir as paródias das minhas bandas favoritas

    Contexto: Login
        * Login com "jose@email.com" e "pwd123"

    Cenario: Ouvir parodia

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte cancao:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Entao essa parodia deve ficar em modo de reproducao