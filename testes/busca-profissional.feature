# CT-01 Cenários: Busca sem filtros

DADO que estou na tela de busca de profissionais
QUANDO eu clico em "Buscar" sem selecionar filtros
ENTÃO o sistema exibe todos os profissionais disponíveis na localidade
E mostra o botão "Agendar consulta"

# CT-02 — Cenários: Busca com filtros

DADO que estou na tela de busca de profissionais
QUANDO eu seleciono o filtro "Assexual"
E clico em "Buscar"
ENTÃO o sistema exibe apenas profissionais com sexualidade "Assexual"

# CT-03 — Cenário: Busca com combinação incomum 

DADO que eu estou na tela de busca de profissionais
QUANDO eu seleciono os filtros "gay" e "asexual"
E clico em buscar
ENTAO o sistema carrega a página
E exibe a mensagem "Não encontramos o que você procura"

# CT-04 — Cenário: Contatando o profissional 

DADO que vizualizo os profissionais encontrados 
QUANDO eu seleciono um profissional 
E clico em "Agendar atendimento"
ENTAO a pagina carrega com a mensagem "Por segurança, confirme o número do seu celular para prosseguir no agendamento da consulta.
