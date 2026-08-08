Feature: Cadastro de usuario

  Scenario: Cadastro com emails que nao correspondem
    Given que eu estou na tela de cadastro
    When eu preencho o email com "yuritiangoh@gmail.com"
    And preencho o confirmar email com "yuritiango@gmail.com"
    Then o sistema nao permite o envio
    And exibe a mensagem "Os e-mails não correspondem, digite novamente."
