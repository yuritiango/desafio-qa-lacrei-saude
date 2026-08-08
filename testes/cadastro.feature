Feature: Cadastro de usuario

  Scenario: CT-01 Campos obrigatorios vazios
    DADO que estou na tela de cadastro
    QUANDO eu clico em "Entrar" sem preencher nada
    ENTÃO o sistema não permite o envio
    E exibe mensagens de erro nos campos obrigatórios

  Scenario: CT-02 Cadastro com email invalido
    DADO que estou na tela de cadastro
    QUANDO eu escrevo um email num formato inválido
    ENTÃO o sistema não permite o envio
    E exibe uma mensagem de formato inválido

  Scenario: CT-03 Cadastro com emails que nao correspondem
    DADO que eu estou na tela de cadastro
    QUANDO eu preencho o email com "yuritiango.qa@gmail.com"
    E preencho o confirmar email com "yuritiangoh@gmail.com"
    ENTÃO o sistema não permite o envio
    E exibe a mensagem "Os e-mails não correspondem, digite novamente"

  Scenario: CT-04 Cadastro com senha fraca
    DADO que estou na tela de cadastro
    QUANDO eu preencho a senha com "123"
    ENTÃO o sistema não permite o envio do formulário
    E exibe a mensagem "A senha deve conter, no mínimo: 8 Caracteres ou mais"

  Scenario: CT-05 Cadastro com email ja existente
    DADO que estou na tela de cadastro
    QUANDO eu preencho o email com um endereço já cadastrado
    ENTÃO o sistema não permite o envio
    E exibe a mensagem "Já existe um usuário cadastrado com este endereço de e-mail."

  Scenario: CT-06 Cadastro com dados validos
    DADO que estou na tela de cadastro
    QUANDO eu preencho todos os campos corretamente
    ENTÃO o sistema permite o cadastro com sucesso
    E exibe a mensagem "Estamos quase lá"

  Scenario: CT-07 Cadastro com campos de nome vazios
    DADO que estou na tela de cadastro
    QUANDO eu não preencho o campo "Nome civil ou social"
    E não preencho o campo "Sobrenome"
    E clico em "Cadastrar"
    ENTÃO o sistema não permite o envio
    E exibe a mensagem "Este campo é obrigatório"

  Scenario: CT-08 Cadastro com nome social preenchido
    DADO que estou na tela de cadastro
    QUANDO eu preencho o campo "Nome civil ou social" com um nome social
    E preencho todos os outros campos corretamente
    E clico em "Cadastrar"
    ENTÃO o sistema aceita o nome social
    E permite o cadastro com sucesso

  Scenario: CT-09 Pos Cadastro com campos obrigatorios vazios
    DADO que estou no pós-cadastro
    QUANDO eu não seleciono nenhuma opção
    E clico em "Próximo"
    ENTÃO o sistema não avança
    E exibe a mensagem "Por favor, selecione uma das opções disponíveis."

  Scenario: CT-10 Pos Cadastro com campos obrigatorios preenchidos
    DADO que estou no pós-cadastro
    QUANDO eu seleciono uma opção em cada pergunta
    E clico em "Próximo"
    ENTÃO o sistema carrega a página
    E exibe a mensagem "Seu cadastro foi concluído!"
